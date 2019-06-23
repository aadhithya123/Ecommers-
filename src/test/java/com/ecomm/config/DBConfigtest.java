package com.ecomm.config;
//import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.StaticApplicationContext;

public class DBConfigtest {

	public static void main(String arg[]){
		AnnotationConfigApplicationContext ctx =new AnnotationConfigApplicationContext();
		ctx.scan("com.ecomm.config");
		ctx.refresh();
		ctx.close();
	}	
	
}
