package action;

import com.opensymphony.xwork2.ActionSupport;
import bean.LoginBean;

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
        if(new LoginBean(username, password).isValidate()) {
            return SUCCESS;
        }
        return ERROR;
    }
}
