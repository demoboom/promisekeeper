package service;

import org.springframework.ui.Model;
import po.Appointment;
import po.Keeper;

import javax.servlet.http.HttpSession;

public interface KeeperService {
    public String join(int aid, HttpSession session, Model model);
    public String quit(int aid, Model model, HttpSession session);
}
