package pl.coderslab.allabouttea.opinion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.allabouttea.tea.Tea;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface OpinionRepository extends JpaRepository<Opinion, Long> {
    Opinion findById(long id);
}
