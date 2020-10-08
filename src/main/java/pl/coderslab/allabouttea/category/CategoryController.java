package pl.coderslab.allabouttea.category;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@RequestMapping("/category")
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping("/add")
    public String addCategory(Model model){
        model.addAttribute("category", new Category());
        return "category/form";
    }
    @GetMapping("all")
    public String getAllCategories(Model model) {
        model.addAttribute("category", categoryService.getAll());
        return "category/all";
    }

    @PostMapping("/add")
    public String saveCategory(@Valid Category category, BindingResult result){
        if(result.hasErrors()){
            return "category/form";
        }
        categoryService.addCategory(category);
        return "redirect:/category/all";
    }
}
