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
    public String build(Appointment appointment, Model model) {
        appointmentDao.build(appointment);
        model.addAttribute("msg","新建成功！");
        return "main";
    }

    @Override
    public String select(int typeid, HttpSession session) {
        session.setAttribute("appointment", appointmentDao.selectAppointmentById(typeid));
        return "main";
    }
}
