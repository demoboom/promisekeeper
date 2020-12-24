package po;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

public class Appointment {
    private int aid;                //约定编号
    private int typeid;             //约定类型编号
    private String title;           //标题
    private String createtime;      //约定创建时间
    private String appointedtime;   //约定时间
    private int num;                //约定人数
    private int hadnum;             //已有人数
    private String place;           //地点
    private String content;         //内容
    private int uid;                //创建者

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getAppointedtime() {
        return appointedtime;
    }

    public void setAppointedtime(String appointedtime) {
        this.appointedtime = appointedtime;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getHadnum() {
        return hadnum;
    }

    public void setHadnum(int hadnum) {
        this.hadnum = hadnum;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
