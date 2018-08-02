package com.niit.fashionNyou.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("com.niit.fashionNyou.model")
@EnableTransactionManagement
public class DBConfig
{
	private final String Driver="org.h2.Driver";
	private final String DBURL="jdbc:h2:tcp://localhost/~/Devops";
	private final String DBUsername="ashi";
	private final String DBPassword="123";
	private final String DBDialect="org.hibernate.dialect.H2Dialect";
	
	@Bean(name="dataSource")
	public DataSource getDataSource()
	{
		BasicDataSource dataSource= new BasicDataSource();
		dataSource.setDriverClassName(Driver);
		dataSource.setUrl(DBURL);
		
		dataSource.setUsername(DBUsername);
		dataSource.setPassword(DBPassword);
		
		return dataSource;
		
	}
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource)
	{
		LocalSessionFactoryBuilder lsfb=new LocalSessionFactoryBuilder(dataSource);
		lsfb.addProperties(getHibernateProperties());
		lsfb.scanPackages("com.niit.fashionNyou.model");
		return lsfb.buildSessionFactory();
		
	}
	
	private Properties getHibernateProperties()
	{
		Properties properties=new Properties();
		properties.put("hibernate.dialect", DBDialect);
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
		return properties;
		
		
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		return new HibernateTransactionManager(sessionFactory);
		
	}
	
	
	

}
