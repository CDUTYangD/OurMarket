package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.UserDAO;
import ourmarket.models.User;
import ourmarket.services.IUserService;
/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 * 用户服务类
 */
@Service
public class UserServiceClass implements IUserService {
	
@Autowired UserDAO userDao;

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

	@Override
	public User findUserById(int userId) {
		// TODO Auto-generated method stub
		return userDao.findById(userId);
	}
	@Override
	public void createUser(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}

	@Override
	public void deleteUserById(int userId) {
		// TODO Auto-generated method stub
		User user=userDao.findById(userId);
		userDao.delete(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.update(user);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userDao.delete(user);
	}
}
