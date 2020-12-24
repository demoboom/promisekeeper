package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import po.Keeper;

@Repository
@Mapper
public interface KeeperDao {
    public int build(Keeper keeper);
    public int join(Keeper keeper);
    public int isExit(Keeper keeper);
    public int delete(int aid);
    public int quit(Keeper keeper);
}
