package web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.OrderService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class OrderAction extends ActionSupport {
	List<Order> orderList;
	Order order ;
	String cardType;
	String creditCard;
	String expiryDate;
	String billToFirstName;
	String billToLastName;
	String billAddress1;
	String billAddress2;
	String billCity;
	String billState;
	String billZip;
	String billCountry;
	String shippingAddressRequired;
	String shipToFirstName;
	String shipToLastName;
	String shipAddress1;
	String shipAddress2;
	String shipCity;
	String shipState;
	String shipZip;
	String shipCountry;

	public String getShipToFirstName() {
		return shipToFirstName;
	}

	public void setShipToFirstName(String shipToFirstName) {
		this.shipToFirstName = shipToFirstName;
	}

	public String getShipToLastName() {
		return shipToLastName;
	}

	public void setShipToLastName(String shipToLastName) {
		this.shipToLastName = shipToLastName;
	}

	public String getShipAddress1() {
		return shipAddress1;
	}

	public void setShipAddress1(String shipAddress1) {
		this.shipAddress1 = shipAddress1;
	}

	public String getShipAddress2() {
		return shipAddress2;
	}

	public void setShipAddress2(String shipAddress2) {
		this.shipAddress2 = shipAddress2;
	}

	public String getShipCity() {
		return shipCity;
	}

	public void setShipCity(String shipCity) {
		this.shipCity = shipCity;
	}

	public String getShipState() {
		return shipState;
	}

	public void setShipState(String shipState) {
		this.shipState = shipState;
	}

	public String getShipZip() {
		return shipZip;
	}

	public void setShipZip(String shipZip) {
		this.shipZip = shipZip;
	}

	public String getShipCountry() {
		return shipCountry;
	}

	public void setShipCountry(String shipCountry) {
		this.shipCountry = shipCountry;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(String creditCard) {
		this.creditCard = creditCard;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getBillToFirstName() {
		return billToFirstName;
	}

	public void setBillToFirstName(String billToFirstName) {
		this.billToFirstName = billToFirstName;
	}

	public String getBillToLastName() {
		return billToLastName;
	}

	public void setBillToLastName(String billToLastName) {
		this.billToLastName = billToLastName;
	}

	public String getBillAddress1() {
		return billAddress1;
	}

	public void setBillAddress1(String billAddress1) {
		this.billAddress1 = billAddress1;
	}

	public String getBillAddress2() {
		return billAddress2;
	}

	public void setBillAddress2(String billAddress2) {
		this.billAddress2 = billAddress2;
	}

	public String getBillCity() {
		return billCity;
	}

	public void setBillCity(String billCity) {
		this.billCity = billCity;
	}

	public String getBillState() {
		return billState;
	}

	public void setBillState(String billState) {
		this.billState = billState;
	}

	public String getBillZip() {
		return billZip;
	}

	public void setBillZip(String billZip) {
		this.billZip = billZip;
	}

	public String getBillCountry() {
		return billCountry;
	}

	public void setBillCountry(String billCountry) {
		this.billCountry = billCountry;
	}

	public String getShippingAddressRequired() {
		return shippingAddressRequired;
	}

	public void setShippingAddressRequired(String shippingAddressRequired) {
		this.shippingAddressRequired = shippingAddressRequired;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		OrderService orderService=new OrderService();
		Account account = (Account) session.get("account");
		orderList = orderService.getOrdersByUsername(account.getUsername());
		return SUCCESS;
	}

	public String viewOrder() {
		OrderService orderService=new OrderService();
		order = orderService.getOrder(order.getOrderId());
		System.out.println(order.getBillCity());
		return SUCCESS;
	}

	public String newOrderForm() {
		order=new Order();
		OrderService orderService=new OrderService();
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		Account account = (Account) session.get("account");
		if (account.getEmail() == null) {
			request.setAttribute("message", "please first log in");
			return INPUT;
		}
		Cart cart = (Cart) session.get("cart");
		order.initOrder(account, cart);
		session.put("order", order);
		return SUCCESS;
	}

	public String newBillForm() {
		OrderService orderService=new OrderService();
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		Boolean shippingAddressRequired = request
				.getParameter("shippingAddressRequired") != null ? true : false;
		if (creditCard == null || creditCard.trim().length() == 0
				|| expiryDate == null || expiryDate.trim().length() == 0
				|| billToFirstName == null
				|| billToFirstName.trim().length() == 0
				|| billToLastName == null
				|| billToLastName.trim().length() == 0 || billAddress1 == null
				|| billAddress1.trim().length() == 0 || billCity == null
				|| billCity.trim().length() == 0 || billState == null
				|| billState.trim().length() == 0 || billZip == null
				|| billZip.trim().length() == 0 || billCountry == null
				|| billCountry.trim().length() == 0) {
			request.setAttribute("message", "the information isn't full");
			return ERROR;
		}
		order = (Order) session.get("order");
		order.setCardType(cardType);
		order.setCreditCard(creditCard.trim());
		order.setExpiryDate(expiryDate.trim());
		order.setBillToFirstName(billToFirstName.trim());
		order.setBillToLastName(billToLastName.trim());
		order.setBillAddress1(billAddress1.trim());
		order.setBillAddress2(billAddress2.trim());
		order.setBillCity(billCity.trim());
		order.setBillState(billState.trim());
		order.setBillZip(billZip.trim());
		order.setBillCountry(billCountry.trim());
		if (shippingAddressRequired) {
			return INPUT;
		} else {
			return SUCCESS;
		}
	}

	public String newShippingForm() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		if (shipToFirstName == null || shipToFirstName.trim().length() == 0
				|| shipToLastName == null
				|| shipToLastName.trim().length() == 0 || shipAddress1 == null
				|| shipAddress1.trim().length() == 0 || shipCity == null
				|| shipCity.trim().length() == 0 || shipState == null
				|| shipState.trim().length() == 0 || shipZip == null
				|| shipZip.trim().length() == 0 || shipCountry == null
				|| shipCountry.trim().length() == 0) {
			request.setAttribute("message", "The information isn't full");
			return INPUT;
		}
		order = (Order) session.get("order");
		order.setShipToFirstName(shipToFirstName.trim());
		order.setShipToLastName(shipToLastName.trim());
		order.setShipAddress1(shipAddress1.trim());
		order.setShipAddress2(shipAddress2.trim());
		order.setShipCity(shipCity.trim());
		order.setShipState(shipState.trim());
		order.setShipZip(shipZip.trim());
		order.setShipCountry(shipCountry.trim());
		session.put("order", order);
		return SUCCESS;
	}

	public String confirmOrder() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		OrderService orderService=new OrderService();
		order = (Order) session.get("order");
		orderService.insertOrder(order);
		session.remove("cart");
		request.setAttribute("message", "the  order success");
		return SUCCESS;
	}

}
