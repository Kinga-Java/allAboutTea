package pl.coderslab.allabouttea.file;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.allabouttea.tea.TeaRepository;

import javax.transaction.Transactional;
import java.util.List;
@Repository
@Transactional
public interface TeaFileRepository extends JpaRepository<TeaFile, Long> {
    TeaFile findDbFileById(long id);

    @EntityGraph(type = EntityGraph.EntityGraphType.LOAD, attributePaths = "data")
    TeaFile findWithDataById(Long id);


}
