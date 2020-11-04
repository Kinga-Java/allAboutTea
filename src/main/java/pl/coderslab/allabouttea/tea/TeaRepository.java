package pl.coderslab.allabouttea.tea;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.producer.Producer;
/*import pl.coderslab.allabouttea.user.User;*/

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface TeaRepository extends JpaRepository<Tea, Long> {

   /* List<Tea> findTeaByUserId(long id);*/
    List<Tea> findTeaByCategory(Category category);
    List<Tea> findTeaByCategoryName(String name);
    List<Tea> findTeaByProducers(Producer producer);

    Optional<Tea>findTeaById(long id);

    @Query("select t from Tea t where t.name like :name% order by t.created desc")
    List<Tea> selectTeaByName(@Param("name")String name);

    @Query("select t from Tea t where t.region like :region% order by t.created desc")
    List<Tea> selectTeaByRegion(@Param("region")String region);

    @Query(value = "SELECT avg(o.rating) FROM Opinion o where o.tea.id=?1")
    double getavgRating(Long id);

 @Query("SELECT t FROM Tea t JOIN t.files WHERE t.id = ?1")
 Tea findProjectAndFilesById(long id);

}
