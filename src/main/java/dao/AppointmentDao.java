package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import po.Appointment;

import java.util.List;

@Repository
@Mapper
public interface AppointmentDao {
    public int build(Appointment appointment);
    public List<Appointment> selectAppointment();
    public List<Appointment> selectAppointmentByType(int id);
    public List<Appointment> selectAppointmentByTitle(String msg);
}
