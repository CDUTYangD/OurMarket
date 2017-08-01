package ourmarket.services;

import java.util.List;

import ourmarket.models.Orders;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface IOrderService {
	//增
	void createOrder(Orders order);
	//删
	void deleteOrder(Orders order);
	//通过id查
	Orders findOrderById(int orderId);
	//查询所有
	List<Orders> findAllOrders();
	List<Orders>findOrdersByUid(int uid);
	//改
	void updateOrder(Orders order);
}
