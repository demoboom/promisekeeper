package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import po.User;

import java.util.List;

@Repository
@Mapper
public interface UserDao {
    public List<User> login(User user);
    public int register(User user);
}
