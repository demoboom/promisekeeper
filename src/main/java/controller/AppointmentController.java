package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import po.Appointment;
import service.AppointmentService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {
    @Autowired
    AppointmentService appointmentService;

    @RequestMapping("/build")
    public String build(Appointment appointment, Model model){
        String str = appointment.getAppointedtime().replaceAll("T"," ");
        appointment.setAppointedtime(str);
        return appointmentService.build(appointment,model);
    }

    @RequestMapping("select")
    public String select(int typeid, HttpSession session){
        return appointmentService.select(typeid, session);
    }
}
