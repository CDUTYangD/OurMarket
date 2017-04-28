package ourmarket.services;

import java.util.List;

import ourmarket.models.User;
/**
 * 
 * @author Admin_YangD
 * @date  2017��4��28��
 */
public interface IUserService {
		//���������û�
		List<User>findAllUsers();
		//��id�����û�
		User findUserById(int userId);
		//�����û�
		void createUser(User user);
		//ɾ���û�
		void deleteUser(User user);
		//ͨ��idɾ���û�
		void deleteUserById(int userId);
		//�޸��û�
		void updateUser(User user);
}
