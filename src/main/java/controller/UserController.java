package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import po.Appointment;
import po.User;
import service.UserService;
import util.MyUtil;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String register(@ModelAttribute User user, Model model, HttpSession session) {
        return userService.register(user, model, session);
    }

    @RequestMapping("/login")
    public String login(@ModelAttribute User user,Model model, HttpSession session) {
        return userService.login(user, model, session);
    }

    @RequestMapping("/personal")
    public String personal(Model model){
        return userService.personal(model);
    }

    @RequestMapping("/update")
    public String update(User user, Model model, HttpSession session){
        user.setUid(MyUtil.getUserId(session));
        return userService.update(user, model, session);
    }

    @RequestMapping("/exit")
    public String exit(HttpSession session) {
        session.invalidate();
        return "login";
    }
}
