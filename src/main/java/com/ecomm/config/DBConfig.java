package com.ecomm.config;
import java.util.Properties;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecomm.Dao.BillingDetailsDAO;
import com.ecomm.Dao.BillingDetailsDaoImpl;
import com.ecomm.Dao.CartDAO;
import com.ecomm.Dao.CartDaoImpl;
import com.ecomm.Dao.CategoryDAO;
import com.ecomm.Dao.CategoryDaoImpl;
import com.ecomm.Dao.OrderDetailsDAO;
import com.ecomm.Dao.OrderDetailsDaoImpl;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.ProductDaoImpl;
import com.ecomm.Dao.SupplierDAO;
import com.ecomm.Dao.SupplierDaoImpl;
import com.ecomm.Dao.UserDAO;
import com.ecomm.Dao.UserDaoImpl;
import com.ecomm.modal.*;
@Configuration
@EnableTransactionManagement
public class DBConfig {
@Bean("dataSource")
public DataSource getH2Datasource(){
	DriverManagerDataSource dr=new DriverManagerDataSource();
	dr.setDriverClassName("org.h2.Driver");
	dr.setUrl("jdbc:h2:~/test");
	dr.setUsername("sa");
	dr.setPassword("");
	return dr;
}
@Autowired
@Bean("sessionFactory")
public SessionFactory getSessionFactory(){
	Properties properties=new Properties();
	properties.put("hibernate.hbm2ddl.auto", "update");
	properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	LocalSessionFactoryBuilder builder=new LocalSessionFactoryBuilder(getH2Datasource());
	builder.addProperties(properties);
	builder.addAnnotatedClass(User.class);
	builder.addAnnotatedClass(Supplier.class);
	builder.addAnnotatedClass(Product.class);
	builder.addAnnotatedClass(Category.class);
	builder.addAnnotatedClass(User_Roll.class);
	builder.addAnnotatedClass(Cart.class);
	builder.addAnnotatedClass(BillingDetails.class);
	builder.addAnnotatedClass(OrderDetails.class);
	SessionFactory factory=builder.buildSessionFactory();
	return factory;
}
  @Autowired
  @Bean("txManager") public HibernateTransactionManager
  getTransactionManager(){ HibernateTransactionManager tx=new HibernateTransactionManager(getSessionFactory());
  return tx; 
  }}



































/*
 * @Autowired
 * 
 * @Bean("userdao") public UserDAO getUserDAO(){ UserDaoImpl user=new
 * UserDaoImpl(); return user; }
 * 
 * @Autowired
 * 
 * @Bean("supplierdao") public SupplierDAO getSupplierDAO(){ SupplierDaoImpl
 * supplier=new SupplierDaoImpl(); return supplier; }
 * 
 * @Autowired
 * 
 * @Bean("productdao") public ProductDAO getProductDAO(){ ProductDaoImpl
 * product=new ProductDaoImpl(); return product; }
 * 
 * @Autowired
 * 
 * @Bean("categorydao") public CategoryDAO getCategoryDAO(){ CategoryDaoImpl
 * category=new CategoryDaoImpl(); return category; }
 * 
 * @Autowired
 * 
 * @Bean("orderdetailsdao") public OrderDetailsDAO getOrderDetailsDAO() {
 * OrderDetailsDaoImpl order=new OrderDetailsDaoImpl(); return order; }
 * 
 * @Autowired
 * 
 * @Bean("cartdao") public CartDAO getCartDAO() { CartDaoImpl cart=new
 * CartDaoImpl(); return cart; }}
 * 
 * 
 */