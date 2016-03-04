package org.csu.mypetstore.persistence;

import java.util.List;

import org.csu.mypetstore.domain.Order;



public interface OrderMapper {	
	List<Order> getOrdersByUsername(String username);
	Order getOrder(int orderId);
	void insertOrder(Order order);
	void insertOrderStatus(Order order);
}
