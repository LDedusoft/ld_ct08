package com.ld.utils;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

	/** 
	 * 数据源信息 
	 *  
	 * @author gaoxianglong 
	 */  
	public class ConnectionManager {  
//	    public static Connection getConnection() {  
//	        Connection conn = null;  
//	        try {  
//	            Class.forName("org.hsqldb.jdbcDriver");  
//	            conn = DriverManager.getConnection("jdbc:hsqldb:hsql://localhost/ld", "SA","");  
//	        } catch (Exception e) {  
//	            e.printStackTrace();  
//	        }  
//	        return conn;  
//	    }
	    
//	    public static ComboPooledDataSource dataSource;  
//	    static {  
//	        try {  
//	            dataSource = new ComboPooledDataSource();  
//	            dataSource.setUser("SA");  
//	            dataSource.setPassword("");  
//	            dataSource.setJdbcUrl("jdbc:hsqldb:hsql://localhost/ld");  
//	            dataSource.setDriverClass("org.hsqldb.jdbcDriver");  
//	            dataSource.setInitialPoolSize(10);  
//	            dataSource.setMinPoolSize(5);  
//	            dataSource.setMaxPoolSize(50);  
//	            dataSource.setMaxStatements(100);  
//	            dataSource.setMaxIdleTime(60);  
//	        } catch (Exception e) {  
//	            e.printStackTrace();  
//	        }  
//	    }  
//	      
//	    /** 
//	     * 从连接池中获取数据源链接 
//	     *  
//	     * @author gaoxianglong 
//	     *  
//	     * @return Connection 数据源链接 
//	     */  
//	    public static Connection getConnection() {  
//	        Connection conn = null;  
//	        if (null != dataSource) {  
//	            try {  
//	                conn = dataSource.getConnection();  
//	            } catch (SQLException e) {  
//	                e.printStackTrace();  
//	            }  
//	        }  
//	        return conn;  
//	    }
	    
	    
	    private static Connection conn;
	    private static ComboPooledDataSource ds = new ComboPooledDataSource("hsqlConfig");

	    public static Connection getConnection() {
	        try {
	            conn = ds.getConnection();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return conn;
	    }
	}  

