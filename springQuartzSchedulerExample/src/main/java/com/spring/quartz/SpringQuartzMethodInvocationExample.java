package com.spring.quartz;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzMethodInvocationExample {

	public static void main(String[] args) throws Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"springQuartzMethodInvocationContext.xml");
		try {
			Thread.sleep(5000);
		} finally {
			context.close();
		}
	}
}
