import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.System;

class beerWidgetView extends WatchUi.View {
    
    var message_field;
    var shapes;
    var messageDrowable;

    function initialize(message) {
        View.initialize();
        self.message_field = message;
        System.println(message);
        shapes = new Rez.Drawables.shapes();
        //messageDrowable = new Rez.Drawables.message();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
        //self.findDrawableById("message").setText(self.message_field);
        //shapes.draw(dc);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        messageDrowable = new WatchUi.Text({
            :text=>self.message_field,
            :color=>Graphics.COLOR_WHITE,
            :font=>Graphics.FONT_LARGE,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>WatchUi.LAYOUT_VALIGN_CENTER
        });
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        shapes.draw(dc);
        messageDrowable.draw(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}


