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

@Service("keeperService")
@Transactional
public class KeeperServiceImpl implements KeeperService {
    @Autowired
    KeeperDao keeperDao;
    @Autowired
    AppointmentDao appointmentDao;

    public String join(int aid, HttpSession session, Model model) {
        int uid = MyUtil.getUserId(session);
        Keeper keeper = new Keeper(uid, aid,"待守约");
        if(keeperDao.isExit(keeper)!=0){
            model.addAttribute("msg","已加入约定，无需加入。");
        }
        else if(appointmentDao.isEnough(aid)!=0){
            model.addAttribute("msg", "人数已满，加入失败！");
        }
        else{
            keeperDao.join(keeper);
            appointmentDao.addNum(aid);
            model.addAttribute("msg", "参加成功！");
        }
        model.addAttribute("appointment", appointmentDao.selectAppointment(0));
        return "main";
    }
    
    public String quit(int aid, Model model, HttpSession session) {
    	int uid = MyUtil.getUserId(session);
    	Keeper keeper = new Keeper(uid, aid, null);
    	keeperDao.quit(keeper);
    	appointmentDao.subNum(aid);
    	return "forward:/appointment/joined";
    }
}
