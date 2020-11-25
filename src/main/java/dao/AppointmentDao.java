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
    public int joinAppointment(Keeper keeper);
    public int addNum(int aid);
}
