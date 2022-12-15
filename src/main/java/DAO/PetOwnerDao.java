package DAO;

import bean.PetOwner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class PetOwnerDao {
    private static final SessionFactory sessionFactory = HibernateSessionFactory.getSessionFactory();

    public List<PetOwner> getAllPetOwners(){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        List<PetOwner> list = session.createQuery("from PetOwner").list();
        transaction.commit();
        session.close();
        return list;
    }
}
