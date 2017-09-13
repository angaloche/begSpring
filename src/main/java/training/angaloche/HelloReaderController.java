package training.angaloche;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import training.angaloche.models.User;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.InputStream;


@Controller
public class HelloReaderController {
    @RequestMapping(value = "/hello")
    public String sayHello(Model model) {
        //model.addAttribute("message", "Hello Reader!");
        model.addAttribute("user", getUser());
        model.addAttribute("countries", getCountries());

        return "helloReader";
    }

    @RequestMapping(value = "/result")
    public String result(Model model, @ModelAttribute @Valid User user, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "helloReader";
        }
        model.addAttribute("first", user.getName());
        model.addAttribute("last", user.getLastname());
        model.addAttribute("birthDate", user.getBirthDate());
        return "result";
    }
    @ModelAttribute(value = "message")
    private String getHelloMessage(){
        return "Hello Reader!";
    }

    private String[] getCountries() {
        return new String[]{"Turkey", "United States", "Germany"};
    }

    private User getUser() {
        User user = new User();
        user.setLastname("ahmed");
        user.setName("harchaoui");
        user.setGender("M");
        user.setCountry("Turkey");
        user.setNonSmoking(true);
        return user;
    }


}
