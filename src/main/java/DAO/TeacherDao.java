package DAO;

import bean.Teanchinfo;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class TeacherDao {
    private static HibernateTemplate template;

//    查询所有教师信息
    public static List<Teanchinfo> getAllTeachers(){
        return template.loadAll(Teanchinfo.class);
    }

//    根据id查询教师信息
    public static Teanchinfo getTeacherById(String id){
        return template.get(Teanchinfo.class, id);
    }

//    添加教师信息
    public static void addTeacher(Teanchinfo teanchinfo){
        teanchinfo.setId(teanchinfo.getId());
    }

//    删除教师信息
    public static void deleteTeacher(String id){
        Teanchinfo teanchinfo = template.get(Teanchinfo.class, id);
        template.delete(teanchinfo);
    }

//    更新教师信息
    public static void updateTeacher(Teanchinfo teanchinfo){
        template.update(teanchinfo);
    }

    public void setTemplate(HibernateTemplate template) {
        TeacherDao.template = template;
    }
}
