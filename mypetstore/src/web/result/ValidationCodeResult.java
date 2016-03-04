package web.result;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import web.ValidationCodeAction;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;


public class ValidationCodeResult implements Result
{

	@Override
	public void execute(ActionInvocation invocation) throws Exception {
		ValidationCodeAction action = (ValidationCodeAction)invocation.getAction();
		
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		
		response.setContentType(action.getContentType());
		response.setContentLength(action.getContentLength());
		
		ServletOutputStream sos = response.getOutputStream();
		sos.write(action.getValidationCodeImage().getImageBytes());
		sos.close();
	}

}
