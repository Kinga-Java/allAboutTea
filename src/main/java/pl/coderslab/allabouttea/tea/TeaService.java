package pl.coderslab.allabouttea.tea;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.category.CategoryRepository;
import pl.coderslab.allabouttea.category.CategoryService;
import pl.coderslab.allabouttea.opinion.Opinion;
import pl.coderslab.allabouttea.producer.Producer;
/*import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.producer.Producer;*/
/*import pl.coderslab.allabouttea.user.User;*/

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
@RequiredArgsConstructor
public class TeaService {
    private final TeaRepository teaRepository;

    public void saveTea(Tea tea){
        teaRepository.save(tea);
    }

    public List<Tea> getAllTeas() {
        return teaRepository.findAll();
    }

   /* public List<Tea>findAllByUser(long id){
        return teaRepository.findTeaByUserId(id);
    }*/

    public void ratingAverage(Tea tea){
       tea.setAverageNote(teaRepository.getavgRating(tea.getId()));
    }

        public List<Tea>findTeaByCategory(Category category){
        return teaRepository.findTeaByCategory(category);
    }

    public List<Tea>findTeaByCategoryName(String name){
        return teaRepository.findTeaByCategoryName(name);
    }

    public List<Tea>selectTeaByName(String name){
        return  teaRepository.selectTeaByName(name);
    }

    public List<Tea> selectTeaByRegion(String region){
        return  teaRepository.selectTeaByRegion(region);
    }

    public List<Tea> findTeaByProducers(Producer producer){
        return teaRepository.findTeaByProducers(producer);
    }

    public Optional<Tea> findTeaById(long id){
        return teaRepository.findTeaById(id);
    }

    public void editTea(Tea tea){
        teaRepository.save(tea);
    }

    public void deleteTea(Tea tea){
        teaRepository.delete(tea);
    }
}
