package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import po.Appointment;
import po.Keeper;

import java.util.List;

@Repository
@Mapper
public interface AppointmentDao {
    public int build(Appointment appointment);
    public List<Appointment> selectAppointment(int typeid);
    public List<Appointment> selectAppointmentByTitle(String msg);
    public List<Appointment> selectAppointmentByAid(int aid);
    public List<Appointment> selectJoined(int uid);
    public List<Appointment> selectCreated(int uid);
    public int addNum(int aid);
    public int subNum(int aid);
    public int update(Appointment appointment);
    public int isEnough(int aid);
    public int delete(int aid);
}
