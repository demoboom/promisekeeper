package service;

import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import po.User;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    @Override
    public String register(User user, Model model, HttpSession session) {
        int n = userDao.register(user);
        if(n > 0) {
            return "before/login";
        }else {
            model.addAttribute("msg", "注册失败！");
            return "register";
        }
    }

    @Override
    public String login(User user, Model model, HttpSession session) {
        User ruser = null;
        List<User> list = userDao.login(user);
        if(list.size() > 0) {
            ruser = list.get(0);
        }
        if(ruser != null) {
            session.setAttribute("user", ruser);
            return "building";
        }else {
            model.addAttribute("msg", "用户名或密码错误！");
            return "login";
        }
    }
}
