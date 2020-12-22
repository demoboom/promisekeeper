package service;

import org.springframework.ui.Model;
import po.User;

import javax.servlet.http.HttpSession;

public interface UserService {
    public String register(User user, Model model, HttpSession session);
    public String login(User user,Model model, HttpSession session);
    public String personal(Model model);
    public String update(User user, Model model, HttpSession session);
}
