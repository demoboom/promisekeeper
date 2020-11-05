package service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import po.AppointmentType;

import javax.servlet.http.HttpSession;

public interface IndexService {
    public String before(Model model, HttpSession session, AppointmentType appointmentType);
}
