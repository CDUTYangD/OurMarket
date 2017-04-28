package ourmarket.services;

import java.util.List;

import ourmarket.models.User;
/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface IUserService {
		//查找所有用户
		List<User>findAllUsers();
		//按id查找用户
		User findUserById(int userId);
		//创建用户
		void createUser(User user);
		//删除用户
		void deleteUser(User user);
		//通过id删除用户
		void deleteUserById(int userId);
		//修改用户
		void updateUser(User user);
}
