package ourmarket.services;

import java.util.List;

import ourmarket.models.Orders;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface IOrderService {
	//增加订单
	void createOrder(Orders order);
	//删除订单
	void deleteOrder(Orders order);
	//通过id查询订单
	Orders findOrderById(int orderId);
	//查询所有订单
	List<Orders> findAllOrders();
	//修改订单状态
	void updateOrder(Orders order);
}
