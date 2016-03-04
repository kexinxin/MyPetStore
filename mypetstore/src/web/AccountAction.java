package web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.MyLog;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.MyLogService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class AccountAction extends ActionSupport {

	Account account;
	String username;
	String password;
	String repeatedPassword;
	String firstName;
	String lastName;
	String email;
	String phone;
	String address1;
	String address2;
	String city;
	String state;
	String zip;
	String country;
	String languagePreference;
	String favouriteCategoryId;
	String listOption;
	String bannerOption;
	String validationCode;

	public String getValidationCode() {
		return validationCode;
	}

	public void setValidationCode(String validationCode) {
		this.validationCode = validationCode;
	}

	public String getRepeatedPassword() {
		return repeatedPassword;
	}

	public void setRepeatedPassword(String repeatedPassword) {
		this.repeatedPassword = repeatedPassword;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getLanguagePreference() {
		return languagePreference;
	}

	public void setLanguagePreference(String languagePreference) {
		this.languagePreference = languagePreference;
	}

	public String getFavouriteCategoryId() {
		return favouriteCategoryId;
	}

	public void setFavouriteCategoryId(String favouriteCategoryId) {
		this.favouriteCategoryId = favouriteCategoryId;
	}

	public String getListOption() {
		return listOption;
	}

	public void setListOption(String listOption) {
		this.listOption = listOption;
	}

	public String getBannerOption() {
		return bannerOption;
	}

	public void setBannerOption(String bannerOption) {
		this.bannerOption = bannerOption;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		MyLogService logService = new MyLogService();
		account = null;
		session.put("account", account);
		List<MyLog> myLogList = logService.getMyLogList();
		session.put("myLogList", myLogList);
		return SUCCESS;
	}

	public String signonForm() {
		return SUCCESS;
	}

	public String login() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		AccountService accountService=new AccountService();
		String sessionValidationCode = (String) session.get("validationCode");
		account = accountService.getAccount(username, password);


		if (username == null || username.trim().length() == 0
				|| password == null || password.trim().length() == 0) {
			request.setAttribute("message",
					"username or password cann't be null");
			return INPUT;
		}

		if (account != null) {

			if (!validationCode.equals(sessionValidationCode)) {
				request.setAttribute("message", "验证码不正确");
				return INPUT;
			} else {
				session.put("account", account);
				session.put("authenticated", true);
				return SUCCESS;

			}

		} else {
			request.setAttribute("message",
					"Invalid username or password. Signon failed.");
			return INPUT;
		}

	}

	public String loginOut() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		session.remove("account");
		session.remove("authenticated");
		session.remove("cart");
		account = new Account();
		session.put("account", account);
		return SUCCESS;
	}

	public String viewAccount() {
		return SUCCESS;
	}

	public String editAccount() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		AccountService accountService=new AccountService();
		Boolean listOption = this.listOption == null ? true : false;
		Boolean bannerOption = this.bannerOption == null ? true : false;
		if (password == null || password.trim().length() == 0
				|| repeatedPassword == null
				|| repeatedPassword.trim().length() == 0 || firstName == null
				|| firstName.trim().length() == 0 || lastName == null
				|| lastName.trim().length() == 0 || email == null
				|| email.trim().length() == 0 || phone == null
				|| phone.trim().length() == 0 || address1 == null
				|| address1.trim().length() == 0 || city == null
				|| city.trim().length() == 0 || state == null
				|| state.trim().length() == 0 || zip == null
				|| zip.trim().length() == 0 || country == null
				|| country.trim().length() == 0) {
			request.setAttribute("message", "the information is't full");
			return INPUT;
		}
		if (!password.equals(repeatedPassword)) {
			request.setAttribute("message", "the password isn't repeat");
			return INPUT;
		}
		account = (Account) session.get("account");
		account.setPassword(password.trim());
		account.setEmail(email.trim());
		account.setFirstName(firstName.trim());
		account.setLastName(lastName.trim());
		account.setAddress1(address1.trim());
		account.setAddress2(address2.trim());
		account.setCity(city.trim());
		account.setState(state.trim());
		account.setZip(zip.trim());
		account.setCountry(country.trim());
		account.setPhone(phone.trim());
		account.setFavouriteCategoryId(favouriteCategoryId);
		account.setLanguagePreference(languagePreference);
		account.setListOption(listOption);
		account.setBannerOption(bannerOption);
		accountService.updateAccount(account);
		session.put("account", account);
		return SUCCESS;
	}

	public String returntomain() {
		return SUCCESS;
	}

	public String main() {
		return SUCCESS;
	}

	public String newAccount() {
		return SUCCESS;
	}

	public String add() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		AccountService accountService=new AccountService();
		Boolean listOption = this.listOption == null ? true : false;
		Boolean bannerOption = this.bannerOption == null ? true : false;
		if (username == null || username.trim().length() == 0
				|| password == null || password.trim().length() == 0
				|| repeatedPassword == null
				|| repeatedPassword.trim().length() == 0 || firstName == null
				|| firstName.trim().length() == 0 || lastName == null
				|| lastName.trim().length() == 0 || email == null
				|| email.trim().length() == 0 || phone == null
				|| phone.trim().length() == 0 || address1 == null
				|| address1.trim().length() == 0 || city == null
				|| city.trim().length() == 0 || state == null
				|| state.trim().length() == 0 || zip == null
				|| zip.trim().length() == 0 || country == null
				|| country.trim().length() == 0) {
			request.setAttribute("message", "the information isn't full");

			return INPUT;
		}
		if (!password.equals(repeatedPassword)) {
			request.setAttribute("message", "the password must be the same");
			return INPUT;
		}
		if (accountService.getAccount(username) != null) {
			request.setAttribute("message", "the username is already exist");
			return INPUT;
		}
		account = new Account();
		account.setUsername(username.trim());
		account.setPassword(password.trim());
		account.setEmail(email.trim());
		account.setFirstName(firstName.trim());
		account.setLastName(lastName.trim());
		account.setAddress1(address1.trim());
		account.setAddress2(address2.trim());
		account.setCity(city.trim());
		account.setState(state.trim());
		account.setZip(zip.trim());
		account.setCountry(country.trim());
		account.setPhone(phone.trim());
		account.setFavouriteCategoryId(favouriteCategoryId);
		account.setLanguagePreference(languagePreference);
		account.setListOption(listOption);
		account.setBannerOption(bannerOption);
		accountService.insertAccount(account);
		session.put("account", account);
		return SUCCESS;
	}

	public String log() {
		return SUCCESS;
	}

}
