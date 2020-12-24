package service;

import dao.AppointmentDao;
import dao.KeeperDao;
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
    @Autowired
    KeeperDao keeperDao;

    public String build(Appointment appointment, Model model, HttpSession session) {
        appointment.setUid(MyUtil.getUserId(session));
        appointmentDao.build(appointment);
        Keeper keeper = new Keeper(MyUtil.getUserId(session), appointment.getAid(), "待守约");
        keeperDao.build(keeper);
        model.addAttribute("msg","新建成功！");
        model.addAttribute("appointment", appointmentDao.selectAppointment(0));
        return "main";
    }

    public String select(int typeid, HttpSession session, Model model) {
        model.addAttribute("appointment", appointmentDao.selectAppointment(typeid));
        return "main";
    }

    public String search(String msg, Model model) {
        model.addAttribute("appointment", appointmentDao.selectAppointmentByTitle(msg));
        return "main";
    }

    public String update(Appointment appointment, Model model, HttpSession session) {
        appointmentDao.update(appointment);
        model.addAttribute("appointment", appointmentDao.selectCreated(MyUtil.getUserId(session)));
        return "created";
    }
    
    public String edit(int aid, Model model, HttpSession session) {
        model.addAttribute("aid", aid);
        model.addAttribute("appoint", appointmentDao.selectAppointmentByAid(aid).get(0));
        return "edit";
    }
    
    public String delete(int aid, Model model, HttpSession session) {
    	keeperDao.delete(aid);
        appointmentDao.delete(aid);
        model.addAttribute("appointment", appointmentDao.selectCreated(MyUtil.getUserId(session)));
        return "created";
    }

    @Override
    public String joined(Model model, HttpSession session) {
        int uid = MyUtil.getUserId(session);
        model.addAttribute("appointment", appointmentDao.selectJoined(uid));
        return "joined";
    }
}
