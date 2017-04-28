package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.OrdersDAO;
import ourmarket.models.Orders;
import ourmarket.services.IOrderService;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 * 订单服务类
 */
@Service
public class OrderServiceClass implements IOrderService {
	
@Autowired OrdersDAO ordersDAO;

	@Override
	public void updateOrder(Orders order) {
		// TODO Auto-generated method stub
		ordersDAO.update(order);
	}
	@Override
	public void createOrder(Orders order) {
		// TODO Auto-generated method stub
		ordersDAO.save(order);
	}
	@Override
	public void deleteOrder(Orders order) {
		// TODO Auto-generated method stub
		ordersDAO.delete(order);
	}
	@Override
	public Orders findOrderById(int orderId) {
		// TODO Auto-generated method stub
		return ordersDAO.findById(orderId);
	}
	@Override
	public List<Orders> findAllOrders() {
		// TODO Auto-generated method stub
		return ordersDAO.findAll();
	}

}
