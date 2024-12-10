
package com.mycompany.e.commercesite.dao;

import com.mycompany.e.commercesite.entites.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


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
    
    public List<Category> getCategories()
{
	Session s = this.factory.openSession();
        Query query = s.createQuery("from Category");
        List<Category> list = query.list();
        
        return list;
    
}
}
