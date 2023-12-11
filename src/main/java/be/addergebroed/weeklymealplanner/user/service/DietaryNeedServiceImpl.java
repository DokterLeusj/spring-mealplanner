package be.addergebroed.weeklymealplanner.user.service;

import be.addergebroed.weeklymealplanner.user.model.DietaryNeed;
import be.addergebroed.weeklymealplanner.user.repository.DietaryNeedRepository;
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
}
