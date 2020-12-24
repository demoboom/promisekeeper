package controller;

import dao.AppointmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import po.Appointment;
import po.Keeper;
import service.KeeperService;
import util.MyUtil;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/keeper")
public class KeeperController {
    @Autowired
    KeeperService keeperService;
    @Autowired
    AppointmentDao appointmentDao;

    @RequestMapping("/join")
    public String join(int aid, HttpSession session, Model model){
        return keeperService.join(aid, session, model);
    }
    
    @RequestMapping("/quit")
    public String quit(int aid, Model model, HttpSession session){
        return keeperService.quit(aid, model, session);
    }
}
