package ourmarket.services;

import java.util.List;

import ourmarket.models.User;

/**
 * 
 * @author Admin_YangD
 * @date 2017年4月28日
 */
public interface IUserService {
	// 查询所有
	List<User> findAllUsers();

	// 通过id查
	User findUserById(int userId);

	// 增
	void createUser(User user);

	// 删
	void deleteUser(User user);

	// ͨ通过id删除
	void deleteUserById(int userId);

	// 改
	void updateUser(User user);

	public boolean checkuNickNameIsExist(String uNickName);

	public User addUser(User user);

	public User identifyLoginInfo(String uNickName, String uPassword);

	public int getIdByNickName(String uNickName);

	public User getUserByuNickName(String uNickName);
}
