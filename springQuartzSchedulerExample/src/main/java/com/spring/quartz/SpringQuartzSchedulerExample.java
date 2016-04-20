package com.spring.quartz;

import java.util.concurrent.CountDownLatch;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringQuartzSchedulerExample implements ILatch {
	private int repeatCount = 3;
	private CountDownLatch latch;
	
	public SpringQuartzSchedulerExample() {
		System.out.println("Create count down latch for 3");
		latch = new CountDownLatch(repeatCount + 1);
	}

	public static void main(String[] args) throws Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"springQuartzSchedulerContext.xml");
		try {
			SpringQuartzSchedulerExample example = (SpringQuartzSchedulerExample) context
					.getBean("jobLatch");
			example.waitTillJobsExecute();
			System.out.println("All triggers executed. Shutdown scheduler");
		} finally {
			context.close();
		}
	}

	public void countDown() {
		latch.countDown();
	}

	public void waitTillJobsExecute() throws InterruptedException {
		latch.await();
	}
}
