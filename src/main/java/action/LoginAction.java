package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import bean.LoginBean;

import java.util.Map;

public class LoginAction extends ActionSupport{

    String password;
    String username;

    ActionContext context = ActionContext.getContext();

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

        Map<String, Object> session = context.getSession();
        Map<String, Object> application = context.getApplication();

        LoginBean loginBean = new LoginBean(username, password);
        if (loginBean.isValidate()) {
            session.put("username", username);
            context.setSession(session);
            Integer online = (Integer) application.get("online");
            if (online == null) {
                online = 1;
            } else {
                online++;
            }
            application.put("online", online);
            context.setApplication(application);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
