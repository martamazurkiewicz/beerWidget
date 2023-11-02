import Toybox.Lang;
import Toybox.Math;

class BeerCounter {
    private var _beerNumber as Number;
    private var _activeCalories as Number;
    private var _avgBeerCaloryVal as Number;

    //! Constructor
    //! @param burnedActiveCalories Number of active calories burned
    public function initialize(burnedActiveCalories as Number) {
        _activeCalories = burnedActiveCalories;
        _avgBeerCaloryVal = 180;
        _beerNumber = 0;
        calculateBeerBottleNumber();
    }

    //! Set the number of active calories burned
    private function calculateBeerBottleNumber() as Void {
        _beerNumber = Math.floor(_activeCalories / _avgBeerCaloryVal);
    }

    //! How many beer bottles can be drunk considering the active calories
    public function getBeerBottlesNumber() as Number {
        return _beerNumber;
    }

}