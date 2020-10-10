package pl.coderslab.allabouttea.opinion;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.allabouttea.tea.Tea;
import pl.coderslab.allabouttea.tea.TeaService;
import pl.coderslab.allabouttea.user.User;
import pl.coderslab.allabouttea.user.UserService;

import javax.validation.Valid;
import javax.validation.Validator;
import java.security.Principal;
import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/opinion")
public class OpinionController {
    private final OpinionService opinionService;
    private final TeaService teaService;
    private final UserService userService;

    @ModelAttribute("tea")
    public List<Tea> getAllTeas() {
        return teaService.getAllTeas();
    }

    @ModelAttribute("loggedUser")
    public User showUser(Principal principal) {
        return userService.findByEmail(principal.getName());
    }

    @GetMapping("add")
    public String addOpinion(Model model) {
        model.addAttribute("opinion", new Opinion());
        return "opinion/form";
    }

    @PostMapping("add")
    public String saveOpinion(@Valid Opinion opinion, BindingResult result) {
        if (result.hasErrors()) {
            return "opinion/form";
        }
        opinionService.addOpinion(opinion);
        return "redirect:/opinion/all";
    }

    @GetMapping("all")
    public String getAllOpinions(Model model) {
        model.addAttribute("opinion", opinionService.getAll());
        return "opinion/all";
    }

    @GetMapping("/edit/{id}")
    public String editOpinion(@PathVariable long id, Model model) {
        Opinion opinion = opinionService.findOpinionById(id);
        if (opinion == null) {
            return "error";
        }
        model.addAttribute("opinion", opinion);
        return "opinion/form";
    }

    @PostMapping("/edit/{id}")
    public String saveEditedOpinion(@PathVariable long id, @Valid Opinion opinion, BindingResult result) {
        if (opinion.getId() != id) {
            return "error";
        }
        if (result.hasErrors()) {
            return "opinion/form";
        }
        opinionService.updateOpinion(opinion);
        return "redirect:/opinion/all";
    }
}
