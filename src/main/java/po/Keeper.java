package po;

public class Keeper {
    private int uid;
    private int aid;
    private String state;

    public Keeper(int uid, int aid, String state) {
        this.uid = uid;
        this.aid = aid;
        this.state = state;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
