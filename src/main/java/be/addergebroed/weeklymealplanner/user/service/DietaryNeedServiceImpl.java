package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import be.addergebroed.weeklymealplanner.user.repository.DietaryNeedRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DietaryNeedServiceImpl implements DietaryNeedService {
    private final DietaryNeedRepository dietaryNeedRepo;

    @Override
    public List<DietaryNeed> fetchAllNeeds() {
        return dietaryNeedRepo.findAll();
    }

    @Override
    public DietaryNeed fetchDietaryNeedById(Long id) {
        return dietaryNeedRepo.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Could not find dietary need with id " + id));
    }
}
