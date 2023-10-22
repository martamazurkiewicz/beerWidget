import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.System;

class beerWidgetView extends WatchUi.View {
    
    var message_field;

    function initialize(message) {
        View.initialize();
        self.message_field = message;
        System.println(message);
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);

        var middlePointOfTextWidth = 5*dc.getWidth()/8;
        var middlePointOfTextHeight = 5*dc.getHeight()/16;
        var spaceAvailableForTextWidth = 3*dc.getWidth()/8;
        var spaceAvailableForTextHeight = 3*dc.getWidth()/8;
        var truncateStaticText = true;
        var lineStartWidth = middlePointOfTextWidth - spaceAvailableForTextWidth/2 - .1*middlePointOfTextWidth;
        var lineFinishWidth = middlePointOfTextWidth + spaceAvailableForTextWidth/2 + .1*middlePointOfTextWidth;
        var font = Graphics.FONT_XTINY;

        dc.drawText(
            middlePointOfTextWidth, 
            middlePointOfTextHeight, 
            font,
            Graphics.fitTextToArea(
                "Your active calories translates to", 
                font, 
                spaceAvailableForTextWidth, 
                spaceAvailableForTextHeight, 
                truncateStaticText),
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
        dc.drawLine(
            lineStartWidth,
            dc.getHeight()/2,
            lineFinishWidth,
            dc.getHeight()/2);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}


