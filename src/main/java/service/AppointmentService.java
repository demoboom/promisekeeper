package service;

import org.springframework.ui.Model;
import po.Appointment;

import javax.servlet.http.HttpSession;

public interface AppointmentService {
    public String build(Appointment appointment, Model model, HttpSession session);
    public String select(int typeid, HttpSession session, Model model);
    public String search(String msg, Model model);
    public String update(Appointment appointment, Model model, HttpSession session);
    public String edit(int aid, Model model, HttpSession session);
    public String delete(int aid, Model model, HttpSession session);
    public String joined(Model model, HttpSession session);
}
