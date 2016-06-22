package com.Maxifum.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

//@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.Maxifum.*" })
@PropertySource(value = { "classpath:application.properties" })
public class HibernateConfiguration {
	@Autowired
	public Environment environment;

	// Hibernate Configuration to Connect to Microsoft SQL Server.
	// To modify de DataBase, String Connection and Hibernate properties, edit
	// the resource/application.properties.

	@Bean(name = "SQLServer")
	public LocalSessionFactoryBean sessionFactorySQLServer() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSourceSQLSERVER());
		sessionFactory.setPackagesToScan(environment.getRequiredProperty("Hibernate.setPackagesToScan"));
		sessionFactory.setHibernateProperties(SQLServerHibernateProperties());
		return sessionFactory;
	}

	@Bean(name = "dataSourceSQLSERVER")
	public DataSource dataSourceSQLSERVER() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("jdbc.driverClassName"));
		dataSource.setUrl(environment.getRequiredProperty("jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("jdbc.password"));
		return dataSource;
	}

	private Properties SQLServerHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", environment.getRequiredProperty("MSSQLServer.hibernate.dialect"));
		properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
		properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
		return properties;
	}

	// ************************************************************************************************************

	// Hibernate Configuration to Connect to a PostgresSQL server.
	// To modify de DataBase, String Connection and Hibernate properties, edit
	// the resource/application.properties.

	@Bean(name = "Postgres")
	public LocalSessionFactoryBean sessionFactoryPostgres() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSourcePOSTGRES());
		sessionFactory.setPackagesToScan(environment.getRequiredProperty("Hibernate.setPackagesToScan"));
		sessionFactory.setHibernateProperties(PostgresHibernateProperties());
		return sessionFactory;
	}

	@Bean(name = "dataSourcePOSTGRES")
	public DataSource dataSourcePOSTGRES() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("postgres.jdbc.driverClassName"));
		dataSource.setUrl(environment.getRequiredProperty("postgres.jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("postgres.jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("postgres.jdbc.password"));
		return dataSource;
	}

	private Properties PostgresHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", environment.getRequiredProperty("postgres.hibernate.dialect"));
		properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
		properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
		return properties;
	}

	// ************************************************************************************************************

	// Hibernate Configuration to Connect to a local Microsoft SQL server,
	// usually used in development.
	// To modify de DataBase, String Connection and Hibernate properties, edit
	// the resource/application.properties.

	@Bean(name = "LocalSQLServer")
	public LocalSessionFactoryBean sessionFactoryLocalSQLServer() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSourceLocalSQLSERVER());
		sessionFactory.setPackagesToScan(environment.getRequiredProperty("Hibernate.setPackagesToScan"));
		sessionFactory.setHibernateProperties(localSQLServerHibernateProperties());
		return sessionFactory;
	}

	@Bean(name = "dataSourceLocalSQLSERVER")
	public DataSource dataSourceLocalSQLSERVER() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getRequiredProperty("local.jdbc.driverClassName"));
		dataSource.setUrl(environment.getRequiredProperty("local.jdbc.url"));
		dataSource.setUsername(environment.getRequiredProperty("local.jdbc.username"));
		dataSource.setPassword(environment.getRequiredProperty("local.jdbc.password"));
		return dataSource;
	}

	private Properties localSQLServerHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", environment.getRequiredProperty("MSSQLServer.hibernate.dialect"));
		properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
		properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
		return properties;
	}

	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(@Qualifier(value = "SQLServer") SessionFactory s) {
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(s);
		return txManager;
	}
}
