import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.System;

class beerWidgetView extends WatchUi.View {
    
    var message_field;
    var shapes;
    var staticText;
    var dynamicText;
    //var screenWidth;
    var mySettings;

    function initialize(message) {
        View.initialize();
        self.message_field = message;
        System.println(message);
        //shapes = new Rez.Drawables.shapes();
        //messageDrowable = new Rez.Drawables.message();
        mySettings = System.getDeviceSettings();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        //setLayout(Rez.Layouts.MainLayout(dc));
        //self.findDrawableById("message").setText(self.message_field);
        //shapes.draw(dc);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        staticText = new WatchUi.Text({
            :text=>"Your active calories translates to",
            :color=>Graphics.COLOR_WHITE,
            :font=>Graphics.FONT_LARGE,
            //:locX=>WatchUi.LAYOUT_HALIGN_CENTER,
            //:locY=>WatchUi.LAYOUT_VALIGN_TOP,
            :size=>Graphics.FONT_SMALL,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER,
            :width=>self.mySettings.screenWidth/2,
            :height=>self.mySettings.screenHeight/2+5*Graphics.getFontHeight(Graphics.FONT_SMALL)
        });
        // dynamicText = new WatchUi.Text({
        //     :text=>self.message_field + "0% beers",
        //     :color=>Graphics.COLOR_WHITE,
        //     :font=>Graphics.FONT_LARGE,
        //     :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
        //     :locY=>WatchUi.LAYOUT_VALIGN_CENTER,
        //     :size=>Graphics.FONT_SMALL,
        //     :justification=>Graphics.TEXT_JUSTIFY_CENTER
        // });
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        //shapes.draw(dc);
        //staticText.draw(dc);
        //dynamicText.draw(dc);
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        //dc.setColor(0, Graphics.COLOR_WHITE);
        dc.drawText(self.mySettings.screenWidth/2, self.mySettings.screenHeight/2-2*Graphics.getFontHeight(Graphics.FONT_SMALL), Graphics.FONT_SMALL, "Your active calories translates to", Graphics.TEXT_JUSTIFY_CENTER);
        //dynamicText.drawText(x, y, font, text, justification);
        dc.drawLine(0,self.mySettings.screenHeight/2, self.mySettings.screenWidth,self.mySettings.screenHeight/2);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}


