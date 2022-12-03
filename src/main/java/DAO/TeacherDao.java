package DAO;

import bean.Teanchinfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class TeacherDao {
    private static final SessionFactory sessionFactory = HibernateSessionFactory.getSessionFactory();

//    查询所有教师信息
    public static List<Teanchinfo> getAllTeachers(){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<Teanchinfo> list = session.createQuery("from Teanchinfo").list();
        transaction.commit();
        session.close();
        return list;
    }

//    根据id查询教师信息
    public static Teanchinfo getTeacherById(String id){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Teanchinfo teanchinfo = session.get(Teanchinfo.class, id);
        transaction.commit();
        session.close();
        return teanchinfo;
    }

//    添加教师信息
    public static void addTeacher(Teanchinfo teanchinfo){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(teanchinfo);
        transaction.commit();
        session.close();
    }

//    删除教师信息
    public static void deleteTeacher(String id){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Teanchinfo teanchinfo = session.get(Teanchinfo.class, id);
        session.delete(teanchinfo);
        transaction.commit();
        session.close();
    }

//    更新教师信息
    public static void updateTeacher(Teanchinfo teanchinfo){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(teanchinfo);
        transaction.commit();
        session.close();
    }
}
