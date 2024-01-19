package be.addergebroed.weeklymealplanner.recipe.service;

import be.addergebroed.weeklymealplanner.recipe.model.FoodUnit;
import be.addergebroed.weeklymealplanner.recipe.repository.FoodUnitRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FoodUnitServiceImpl implements FoodUnitService {
    private final FoodUnitRepository foodUnitRepo;

    @Override
    public List<FoodUnit> fetchAllUnits() {
        return foodUnitRepo.findAll();
    }

    @Override
    public FoodUnit fetchUnitById(Long id) {
        return foodUnitRepo.findById(id).orElseThrow(() -> new EntityNotFoundException("Could not find unit with id " + id));
    }
}
