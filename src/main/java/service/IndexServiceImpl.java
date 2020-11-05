package service;

import dao.IndexDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import po.AppointmentType;

import javax.servlet.http.HttpSession;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService{
    @Autowired
    IndexDao indexDao;

    @Override
    public String before(Model model, HttpSession session, AppointmentType appointmentType) {
        session.setAttribute("appointmentType", indexDao.selectAppointmentType());
        return "main";
    }
}
