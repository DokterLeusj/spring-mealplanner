package be.addergebroed.weeklymealplanner.recipe.service;


import be.addergebroed.weeklymealplanner.recipe.model.FoodUnit;

import java.util.List;

public interface FoodUnitService {
    //C
    //R
    List<FoodUnit> fetchAllUnits();
    FoodUnit fetchUnitById(Long id);
    //U
    //D
}
