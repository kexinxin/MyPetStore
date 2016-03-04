package org.csu.mypetstore.service;

import java.util.List;

import org.csu.mypetstore.domain.MyLog;
import org.csu.mypetstore.persistence.MyLogMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class MyLogService {
	
	ApplicationContext appContext = new ClassPathXmlApplicationContext(
			"/applicationContext.xml");
  private MyLogMapper myLogMapper=appContext
	.getBean(MyLogMapper.class);
	  

	public MyLogService() {
		// myLogDAO=new MyLogDAOImpl();
	}

	public void insertLog(MyLog log) {
		myLogMapper.insertLog(log);
	}

	public List<MyLog> getMyLogList() {
		return myLogMapper.getMyLogList();
	}
}
