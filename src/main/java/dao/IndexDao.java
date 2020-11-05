package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import po.AppointmentType;

import java.util.List;

@Repository
@Mapper
public interface IndexDao {
    public List<AppointmentType> selectAppointmentType();
}
