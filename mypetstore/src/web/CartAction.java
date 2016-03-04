package web;

import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.CatalogService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class CartAction extends ActionSupport {
	Cart cart;
	String workingItemId;

	public String getWorkingItemId() {
		return workingItemId;
	}

	public void setWorkingItemId(String workingItemId) {
		this.workingItemId = workingItemId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		cart = (Cart) session.get("cart");

		if (cart == null) {
			cart = new Cart();
			session.put("cart", cart);
		}
		return SUCCESS;
	}

	public String addItemToCart() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		CatalogService catalogService=new CatalogService();
		cart = (Cart) session.get("cart");

		if (cart == null) {
			cart = new Cart();
		}

		if (cart.containsItemId(workingItemId)) {
			cart.incrementQuantityByItemId(workingItemId);
		} else {

			boolean isInStock = catalogService.isItemInStock(workingItemId);
			Item item = catalogService.getItem(workingItemId);
			cart.addItem(item, isInStock);
		}
		session.put("cart", cart);
		return SUCCESS;
	}

	public String removeItemFromCart() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		cart = (Cart) session.get("cart");

		Item item = cart.removeItemById(workingItemId);

		return SUCCESS;
	}

	public String updateCartQuantities() {
		Map session = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		cart = (Cart) session.get("cart");

		Iterator<CartItem> cartItems = cart.getAllCartItems();
		while (cartItems.hasNext()) {
			CartItem cartItem = cartItems.next();
			String itemId = cartItem.getItem().getItemId();

			int quantity = Integer.parseInt(request.getParameter(itemId));

			cart.setQuantityByItemId(itemId, quantity);

		}

		return SUCCESS;
	}
}
