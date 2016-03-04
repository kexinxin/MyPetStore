package web.interceptor;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.MyLog;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.MyLogService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LogOutInterceptor implements Interceptor{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		MyLog myLog = new MyLog();
		Map session = ActionContext.getContext().getSession();
		Date date = new Date();
		String dates = date.toGMTString();
		myLog.setLogdate(dates);
		Account account = (Account) session.get("account");
		myLog.setLogname(account.getUsername());
		myLog.setAction("登出");
		MyLogService logService = new MyLogService();
		logService.insertLog(myLog);
		List<MyLog> myLogList = logService.getMyLogList();
		session.put("myLogList", myLogList);
		return invocation.invoke();
	}

}
