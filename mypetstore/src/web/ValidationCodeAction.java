package web;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import util.ValidationCodeImage;

import com.opensymphony.xwork2.Action;



public class ValidationCodeAction implements Action, SessionAware
{
	private Map<String, Object> session;
	
	private ValidationCodeImage validationCodeImage;
	
	private String contentType;
	
	private int contentLength;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public String execute() throws Exception {
		
		validationCodeImage = new ValidationCodeImage();
		
		contentType = "image/jpeg";
		contentLength = validationCodeImage.getImageBytes().length;
		session.put("validationCode", validationCodeImage.getValidationCode());
		return SUCCESS;
	}

	public ValidationCodeImage getValidationCodeImage() {
		return validationCodeImage;
	}

	public String getContentType() {
		return contentType;
	}

	public int getContentLength() {
		return contentLength;
	}
	
	
	
}
