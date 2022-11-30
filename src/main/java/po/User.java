package po;

import DAO.Utils;
import lombok.Data;

import javax.rmi.CORBA.Util;

@Data
public class User {
    private int id;
    private String username;
    private String password;

    public User() {
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean isValidate() throws Exception {
        return Utils.runSql("select * from user where username = ? and password = ?", username, password).next();
    }
}
