package com.spring.quartz;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzCronExample {
	
	public static void main(String[] args) throws Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"springQuartzSchedulerCronContext.xml");
		try {
		Thread.sleep(6000);
		} finally {
			context.close();
		}
	}
}
