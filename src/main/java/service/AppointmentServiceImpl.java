package service;

import dao.AppointmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import po.Appointment;
import po.Keeper;
import util.MyUtil;

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
        model.addAttribute("appointment", appointmentDao.selectAppointment(0));
        return "main";
    }

    @Override
    public String select(int typeid, HttpSession session, Model model) {
        model.addAttribute("appointment", appointmentDao.selectAppointment(typeid));
        return "main";
    }

    @Override
    public String search(String msg, Model model) {
        model.addAttribute("appointment", appointmentDao.selectAppointmentByTitle(msg));
        return "main";
    }

    @Override
    public String join(int aid, HttpSession session, Model model) {
        int uid = MyUtil.getUserId(session);
        Keeper keeper = new Keeper(uid, aid,"待守约");
        appointmentDao.joinAppointment(keeper);
        appointmentDao.addNum(aid);
        model.addAttribute("appointment", appointmentDao.selectAppointment(0));
        return "main";
    }
}
