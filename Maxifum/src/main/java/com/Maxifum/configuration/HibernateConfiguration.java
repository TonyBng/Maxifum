package com.Maxifum.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.Maxifum.*" })
@PropertySource(value = { "classpath:application.properties" })
public class HibernateConfiguration {
	@Autowired
	public Environment environment;

	// Hibernate Configuration to Connect to Microsoft SQL Server.
	// To modify de DataBase, String Connection and Hibernate properties, edit
	// the resource/application.properties.

	@Bean(name = "MySqlSessionFactory")
	public LocalSessionFactoryBean MySqlSessionFactory() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSource());
		sessionFactory.setPackagesToScan(environment.getRequiredProperty("Hibernate.setPackagesToScan"));
		sessionFactory.setHibernateProperties(SQLServerHibernateProperties());
		return sessionFactory;
	}

	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
		dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
		return dataSource;
	}

	private Properties SQLServerHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", environment.getRequiredProperty("jdbc.hibernate.dialect"));
		properties.put("hibernate.show_sql", environment.getRequiredProperty("jdbc.hibernate.show_sql"));
		properties.put("hibernate.format_sql", environment.getRequiredProperty("jdbc.hibernate.format_sql"));
		//properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("jdbc.hibernate.hbm2ddl.auto"));
		//properties.put("hibernate.globally_quoted_identifiers",environment.getRequiredProperty("jdbc.hibernate.globally_quoted_identifiers"));
		return properties;
	}

	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(@Qualifier(value = "MySqlSessionFactory") SessionFactory s) {
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(s);
		return txManager;
	}
}
