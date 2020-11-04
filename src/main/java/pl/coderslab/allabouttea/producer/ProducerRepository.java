package pl.coderslab.allabouttea.producer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface ProducerRepository extends JpaRepository<Producer, Long> {
    Producer findById(long id);

}
