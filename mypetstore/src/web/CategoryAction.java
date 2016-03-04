package web;

import java.util.List;
import java.util.Map;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class CategoryAction extends ActionSupport {
	Category category ;
	Item item ;
	Product product;
	List<Product> productList ;
	private List<Item> itemList;
	String keyword;
	

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public Category getCategory() {
		return category;
	}

	public List<Item> getItemList() {
		return itemList;
	}

	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String execute() throws Exception {
		CatalogService catalogService=new CatalogService();
		category = catalogService.getCategory(category.getCategoryId());
		productList = catalogService.getProductListByCategory(category
				.getCategoryId());

		return SUCCESS;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public String viewProduct() {
		CatalogService catalogService=new CatalogService();
		product = catalogService.getProduct(item.getProductId());
		itemList = catalogService.getItemListByProduct(item.getProductId());

		return SUCCESS;
	}

	public String viewItem() {
		Map session = ActionContext.getContext().getSession();
		CatalogService catalogService=new CatalogService();
		item = catalogService.getItem(item.getItemId());
		product = item.getProduct();
		session.put("product", product);
		session.put("item", item);
		System.out.println(product.getDescription());
		return SUCCESS;
	}

	public String searchProduct() {
		CatalogService catalogService=new CatalogService();
		productList = catalogService.searchProductList(keyword);
		return SUCCESS;
	}

}
