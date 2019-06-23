package com.ecomm.modal;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.SupplierDAO;
import com.ecomm.Dao.UserDAO;
import com.ecomm.config.DBConfig;

public class App 
{
    public static void main( String[] args )
    {
    AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext(DBConfig.class);
    //ctx.refresh();
    //UserDAO
    UserDAO user1=(UserDAO) ctx.getBean("userdao");
    User user=new User();
    user.setUsername("AADHITHYA");
    user.setpassword("aadhi");
    user1.addUser(user);
    SessionFactory s=(SessionFactory) ctx.getBean("sessionFactory");
    Session session=s.openSession();
    session.save(user);
    
   //SupplierDAO
    SupplierDAO supplier1=(SupplierDAO) ctx.getBean("supplierdao");
    Supplier supplier=new Supplier();
    supplier.setSuppliername("Ram");
    supplier.setSupplieraddress("No:10,2nd Cross Street,Anna Nager,Chennai-84");
   
    supplier1.addSupplier(supplier);
    session.save(supplier);
    
    //ProductDAO
    ProductDAO product1=(ProductDAO) ctx.getBean("productdao");
    Product product=new Product();
    product.setProductname("Apple");
    product.setProductquantity(20);
    //product.setCategory(category);
    product1.addProduct(product);
    session.save(product);
    
    //CategoryDAO
    Category category1=(Category) ctx.getBean("categorydao");
    Category category=new Category();
    category.setCategoryname("Macbook pro");
  //  category1.addCategory(category);
   // category.save(category);
    }}
    
    