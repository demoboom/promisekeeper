package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import po.AppointmentType;
import service.IndexService;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;

    @RequestMapping("/toregister")
    public String toregister(){
        return "register";
    }

    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("/before")
    public String before(Model model, HttpSession session, AppointmentType appointmentType){
        return indexService.before(model, session, appointmentType);
    }
}
