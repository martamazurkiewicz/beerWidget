import Toybox.Lang;
import Toybox.Math;
import Toybox.ActivityMonitor;

class ActiveCalories {
    
    var _caloriesBurnedToday as Number;

    //! Constructor
    //! @param burnedActiveCalories Number of active calories burned
    public function initialize() {
        _caloriesBurnedToday = setBurnedCalories();
    }

    //! Set the number of calories burned from Garmin API
    private function setBurnedCalories() as Number {
        var activityInfo = ActivityMonitor.getInfo() as ActivityMonitor.Info;
        return activityInfo.calories;
    }

    //! Get calories actively burned by the user
    public function getActiveCalories() as Number {
        return _caloriesBurnedToday;
    }

}