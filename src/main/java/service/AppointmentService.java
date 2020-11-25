package service;

import org.springframework.ui.Model;
import po.Appointment;

import javax.servlet.http.HttpSession;

public interface AppointmentService {
    public String build(Appointment appointment, Model model, HttpSession session);
    public String select(int typeid, HttpSession session, Model model);
    public String search(String msg,HttpSession session);
    public String join(int aid, HttpSession session);
}
