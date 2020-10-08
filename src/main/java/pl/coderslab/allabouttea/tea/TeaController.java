package pl.coderslab.allabouttea.tea;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.category.CategoryService;
import pl.coderslab.allabouttea.opinion.OpinionRepository;
import pl.coderslab.allabouttea.opinion.OpinionService;
import pl.coderslab.allabouttea.producer.Producer;
import pl.coderslab.allabouttea.producer.ProducerService;
/*import pl.coderslab.allabouttea.user.User;
import pl.coderslab.allabouttea.user.UserService;*/

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("/tea")
public class TeaController {
    private final TeaService teaService;
    private final Validator validator;
    /*private final UserService userService;*/
    private final ProducerService producerService;
    private final CategoryService categoryService;
    private final OpinionService opinionService;

 /*   @ModelAttribute("users")
    public List<User> allUsers() {
        return userService.getAll();
    }*/

    @ModelAttribute("producers")
    public List<Producer> getAllProducers() {
        return producerService.getAll();
    }



    @ModelAttribute("category")
    public List<Category> getAllCategories() {
        return categoryService.getAll();
    }

    @GetMapping("/add")
    public String addTea(Model model) {
        model.addAttribute("tea", new Tea());
        return "tea/form";
    }

    @GetMapping("all")
    public String getAllTeas(Model model) {
        model.addAttribute("tea", teaService.getAllTeas());
        return "tea/all";
    }

    @PostMapping("/add")
    public String saveTea(@Valid @ModelAttribute("tea") Tea tea, BindingResult result) {
        if (result.hasErrors()) {
            return "tea/form";
        }
        teaService.saveTea(tea);
        return "redirect:/tea/all";
    }

    @GetMapping("/edit/{id}")
    public String editTea(@PathVariable long id, Model model) {
        Optional<Tea> tea = teaService.findTeaById(id);
        if (!tea.isPresent()) {
            return "nie znaleziono herbaty o podanym id";
        }
        model.addAttribute("tea", tea.get());
        return "tea/form";
    }

    @PostMapping("/edit/{id}")
    public String saveTea(@PathVariable long id, @Valid Tea tea, BindingResult result) {
        if (tea.getId() != id) {
            return "error";
        }
        if (result.hasErrors()) {
            return "tea/form";
        }
        teaService.editTea(tea);
        return "redirect:/tea/all";
    }

    @RequestMapping("/{id}")
    public String teatDetails(@PathVariable long id, Model model) {
        Optional<Tea> tea = teaService.findTeaById(id);
        if (!tea.isPresent()) {
            return "Nie odnaleziono herbaty o id" + id;
        }
        teaService.ratingAverage(tea.get());
        model.addAttribute("tea", tea.get());
        return "tea/tea";
    }
}



