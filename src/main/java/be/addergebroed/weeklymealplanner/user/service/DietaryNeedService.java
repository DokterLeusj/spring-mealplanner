package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;

import java.util.List;


public interface DietaryNeedService {
    //C
    //R
    List<DietaryNeed> fetchAllNeeds();
    DietaryNeed fetchDietaryNeedById(Long id);
    //U
    //D


}
