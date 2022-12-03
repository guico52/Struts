package action.teacher;

import DAO.TeacherDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteTeacherAction extends ActionSupport {
    String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String execute() throws Exception {
        TeacherDao.deleteTeacher(id);
        return SUCCESS;
    }

}
