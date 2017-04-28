package ourmarket.services;

import java.util.List;

import ourmarket.models.Orders;

/**
 * 
 * @author Admin_YangD
 * @date  2017��4��28��
 */
public interface IOrderService {
	//���Ӷ���
	void createOrder(Orders order);
	//ɾ������
	void deleteOrder(Orders order);
	//ͨ��id��ѯ����
	Orders findOrderById(int orderId);
	//��ѯ���ж���
	List<Orders> findAllOrders();
	//�޸Ķ���״̬
	void updateOrder(Orders order);
}
