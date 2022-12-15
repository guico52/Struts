package DAO;

import bean.Pet;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class PetDao {
    private static  SessionFactory sessionFactory = HibernateSessionFactory.getSessionFactory();

    public static List<Pet> getAllPets(){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<Pet> list = session.createQuery("from Pet").list();
        transaction.commit();
        session.close();
        return list;
    }


}
