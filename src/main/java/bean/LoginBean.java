package bean;

import DAO.Utils;
import lombok.Data;

@Data
public class LoginBean {
    private int id;
    private String username;
    private String password;

    public LoginBean() {
    }

    public LoginBean(String username, String password) {
        this.username = username;
        this.password = password;
    }

//    判断用户是否存在，是则返回true，否则返回false
    public boolean isValidate() throws Exception {
//        如果用户存在,next()返回true,否则返回false
        return Utils.runSql("select * from user where username = ? and password = ?", username, password).next();
    }
}
