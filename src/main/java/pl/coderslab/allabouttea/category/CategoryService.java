package pl.coderslab.allabouttea.category;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public void addCategory(Category category){
        categoryRepository.save(category);
    }


    public List<Category> getAll(){
        return categoryRepository.findAll();
    }
    public Category findCategoryByName(String name) {
        return categoryRepository.findCategoryByName(name);
    }
}
