package action;

import com.opensymphony.xwork2.ActionSupport;
import po.User;

public class LoginAction extends ActionSupport {

    String password;
    String username;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String execute() throws Exception {
        if(new User(username, password).isValidate()) {
            return SUCCESS;
        }
        return ERROR;
    }
}
