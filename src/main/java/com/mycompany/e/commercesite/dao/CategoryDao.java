
package com.mycompany.e.commercesite.dao;

import com.mycompany.e.commercesite.entites.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class CategoryDao {
    
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public int saveCategory(Category cat)
    {
        Session session = this.factory.openSession();
        
        Transaction tx = session.beginTransaction();
        int catId = (int) session.save(cat);
        tx.commit();
        
        return catId;
    }
    
    
}
