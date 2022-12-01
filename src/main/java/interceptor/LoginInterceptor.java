package interceptor;

import bean.LoginBean;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

public class LoginInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        Map<String, Object> session = actionInvocation.getInvocationContext().getSession();
        if(session.get("user")==null){
//            获取action的类名并输出
            String actionName = actionInvocation.getAction().getClass().getName();
            System.out.println(actionName);
//            如果是LoginAction，放行
            if(actionName.equals("action.LoginAction")){
                return actionInvocation.invoke();
            }
//            否则返回登录
            return "redirect";
        } else {
            return actionInvocation.invoke();
        }

    }
}
