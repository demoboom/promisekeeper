package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import po.Appointment;
import po.User;
import service.AppointmentService;
import util.MyUtil;

import javax.crypto.interfaces.PBEKey;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {
    @Autowired
    AppointmentService appointmentService;

    @RequestMapping("/build")
    public String build(Appointment appointment, Model model, HttpSession session){
        String str = appointment.getAppointedtime().replaceAll("T"," ");
        appointment.setAppointedtime(str);
        appointment.setCreatetime(MyUtil.getDate());
        return appointmentService.build(appointment,model,session);
    }

    @RequestMapping("/select")
    public String select(int typeid, HttpSession session, Model model){
        return appointmentService.select(typeid, session, model);
    }

    @RequestMapping("/search")
    public String search(String msg, Model model){
        return appointmentService.search(msg, model);
    }

    @RequestMapping("/update")
    public String update(Appointment appointment, Model model, HttpSession session){
        return appointmentService.update(appointment, model, session);
    }
    
    @RequestMapping("/edit")
    public String edit(int aid, Model model, HttpSession session){
        return appointmentService.edit(aid, model, session);
    }
    
    @RequestMapping("/delete")
    public String delete(int aid, Model model, HttpSession session){
        return appointmentService.delete(aid, model, session);
    }

    @RequestMapping("/joined")
    public String joined(Model model, HttpSession session){
        return appointmentService.joined(model, session);
    }
}
