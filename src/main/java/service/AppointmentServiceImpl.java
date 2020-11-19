package service;

import dao.AppointmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import po.Appointment;

import javax.servlet.http.HttpSession;

@Service("appointmentService")
@Transactional
public class AppointmentServiceImpl implements AppointmentService {
    @Autowired
    AppointmentDao appointmentDao;

    @Override
    public String build(Appointment appointment, Model model, HttpSession session) {
        appointmentDao.build(appointment);
        model.addAttribute("msg","新建成功！");
        session.setAttribute("appointment", appointmentDao.selectAppointment());
        return "main";
    }

    @Override
    public String select(int typeid, HttpSession session) {
        session.setAttribute("appointment", appointmentDao.selectAppointmentByType(typeid));
        return "main";
    }

    @Override
    public String search(String msg, HttpSession session) {
        session.setAttribute("appointment", appointmentDao.selectAppointmentByTitle(msg));
        return "main";
    }
}
