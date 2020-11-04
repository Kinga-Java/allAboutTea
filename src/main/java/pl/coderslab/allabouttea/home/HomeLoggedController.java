package pl.coderslab.allabouttea.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeLoggedController {
    @RequestMapping("/homeuser")
    public String hello(){
        return "login/home";
    }
}
