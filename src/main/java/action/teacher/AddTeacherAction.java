package action.teacher;

import DAO.TeacherDao;
import bean.Teanchinfo;
import com.opensymphony.xwork2.ActionSupport;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class AddTeacherAction extends ActionSupport {

    String id;
    String name;
    String sex;
    Integer age;
    String department;

    @Override
    public String execute() throws Exception {
        Teanchinfo teanchinfo = new Teanchinfo(id,name,sex,age,department);
        TeacherDao.addTeacher(teanchinfo);
        return SUCCESS;
    }
}
