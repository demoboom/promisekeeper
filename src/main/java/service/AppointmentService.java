package service;

import org.springframework.ui.Model;
import po.Appointment;

import javax.servlet.http.HttpSession;

public interface AppointmentService {
    public String build(Appointment appointment, Model model);
    public String select(int typeid, HttpSession session);
}
