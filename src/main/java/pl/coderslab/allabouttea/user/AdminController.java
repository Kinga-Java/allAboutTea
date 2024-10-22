package pl.coderslab.allabouttea.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class AdminController {
    private final UserService userService;

    @RequestMapping("/admin")
    public String createUserAdmin(){
        userService.createUserAdmin();
        return "login/login";
    }

/*    @GetMapping("/adminDashboard/allUsers")
    public String usersList(Model model){
        model.addAttribute("user", userService.getAll());
            return "admin/allUsers";

    }*/
}
