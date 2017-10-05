package com.jni.sql.demo;

import java.io.File;
import java.io.IOException;

import net.sf.jni4net.Bridge;

public class JNI_SQL_DEMO1 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		 System.out.println(System.getProperty("java.library.path")); 		
			Bridge.setVerbose(true);
			Bridge.init();
			File MyProxyDLL = new File("SQLDemo1.j4n.dll");
			Bridge.LoadAndRegisterAssemblyFrom(MyProxyDLL);  
			// Please Provide DB_Name and Table name in below method
			// DB_NAME= ATMECSDB
			// DBTABLE= Users
			sqldemo1.SQLConnect1.conn_details("ATMECSDB", "Users");
		   
	}

}
