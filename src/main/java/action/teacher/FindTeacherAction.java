package action.teacher;

import com.opensymphony.xwork2.ActionSupport;

public class FindTeacherAction extends ActionSupport {
    String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String execute() throws Exception {
        return SUCCESS;
    }

}
