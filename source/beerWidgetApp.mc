import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class beerWidgetApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        var _activeCalories = new ActiveCalories();
        var _beerCounter = new BeerCounter(_activeCalories.getActiveCalories());
        return [ new beerWidgetView(_beerCounter.getBeerBottlesNumber()) ] as Array<Views or InputDelegates>;
    }

}

function getApp() as beerWidgetApp {
    return Application.getApp() as beerWidgetApp;
}