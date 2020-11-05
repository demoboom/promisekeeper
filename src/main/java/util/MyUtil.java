package util;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import po.User;
public class MyUtil {
    /**
     * 获得时间字符串
     */
    public static String getDate(){
        String id = null;
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        id=sdf.format(date);
        return id;
    }
    /**
     * 获得用户ID
     */
    public static Integer getUserId(HttpSession session) {
        User ruser = (User)session.getAttribute("user");
        return ruser.getUid();
    }
}
