package action.teacher;

import DAO.TeacherDao;
import bean.Teanchinfo;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UpdateTeacherAction extends ActionSupport {
    String id;
    String name;
    String sex;
    Integer age;
    String department;

    public String execute() throws Exception {
        Teanchinfo teachinfo = new Teanchinfo(id, name, sex, age, department);
        TeacherDao.updateTeacher(teachinfo);
        return SUCCESS;
    }
}
