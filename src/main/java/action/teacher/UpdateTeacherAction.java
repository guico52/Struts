package action.teacher;

import bean.Teanchinfo;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UpdateTeacherAction extends ActionSupport {
    String id;

    public String execute() throws Exception {
        return SUCCESS;
    }
}
