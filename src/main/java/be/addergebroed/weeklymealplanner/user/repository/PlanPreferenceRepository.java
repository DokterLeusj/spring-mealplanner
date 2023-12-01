package be.addergebroed.weeklymealplanner.user.repository;

import be.addergebroed.weeklymealplanner.user.model.PlanPreference;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlanPreferenceRepository extends JpaRepository<PlanPreference,Long> {
}
