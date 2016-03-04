package web.interceptor;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.MyLog;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.MyLogService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LogInterceptor implements Interceptor {
	static int i = 0;
	String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	private static final long serialVersionUID = 3244973830196015811L;
	private HttpSession session;

	public void setSession(Map<String, Object> session) {
		this.session = (HttpSession) session;
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		// String actionName = invocation.getInvocationContext().getName();
		// // 获取action后附带参数
		Map parameters = invocation.getInvocationContext().getParameters();
		AccountService accountService = new AccountService();
		String[] names = (String[]) parameters.get("username");
		String[] password = (String[]) parameters.get("password");
		String[] validationCode = (String[]) parameters.get("validationCode");

		Account account = accountService.getAccount(names[0], password[0]);
		Map session = ActionContext.getContext().getSession();
		String sessionValidationCode = (String) session.get("validationCode");
		if (account != null) {
			if (validationCode[0].equals(sessionValidationCode)) {
				MyLog myLog = new MyLog();

				Date date = new Date();
				String dates = date.toGMTString();
				myLog.setLogdate(dates);
				myLog.setLogname(account.getUsername());
				myLog.setAction("登陆");
				MyLogService logService = new MyLogService();
				logService.insertLog(myLog);
				List<MyLog> myLogList = logService.getMyLogList();
				session.put("myLogList", myLogList);
			}
		}
		return invocation.invoke();

	}

}
