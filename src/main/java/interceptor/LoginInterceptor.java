package interceptor;

import bean.LoginBean;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Objects;

public class LoginInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String userName = (String) session.getAttribute("username");
        if (Objects.equals(userName, "") || userName == null) {//错误,回到登录界面
            return Action.INPUT;
        } else {
            return actionInvocation.invoke();
        }
    }
}
