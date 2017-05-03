package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;

import ourmarket.daos.UserDAO;
import ourmarket.models.User;
import ourmarket.services.IUserService;

/**
 * 
 * @author Admin_YangD
 * @date 2017年4月28日 用户服务类
 */
@Service
public class UserServiceClass implements IUserService {

	@Autowired
	UserDAO userDao;

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
		User user = userDao.findById(userId);
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

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * ourmarket.services.IUserService#CheckuNickNameIsExist(java.lang.String)
	 * 检查用户名是否存在
	 */
	@Override
	public boolean checkuNickNameIsExist(String uNickName) {

		int result = userDao.findByUnickName(uNickName).size();
		if (result > 0) {
			return true;
		} else {
			return false;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ourmarket.services.IUserService#AddUser(ourmarket.models.User) //
	 * 添加用户
	 */
	@CachePut(value = "userCache", key = "#result.getUnickName()", condition = "#result!=null")
	@Override
	public User addUser(User user) {
		if (!checkuNickNameIsExist(user.getUnickName())) {
			return userDao.save(user);
		} else {
			return null;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ourmarket.services.IUserService#IdentifyLoginInfo(java.lang.String,
	 * java.lang.String) 检查账号信息是个正确
	 */

	@Override
	public User identifyLoginInfo(String uNickName, String uPassword) {
		if (checkuNickNameIsExist(uNickName)) {
			User user = (User) userDao.findByUnickName(uNickName).get(0);
			if (user.getUpassword().equals(uPassword)) {
				return user;
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ourmarket.services.IUserService#GetIdByNickName(java.lang.String)
	 * 根据用户名查找ID
	 */
	@Override
	public int getIdByNickName(String uNickName) {
		if (checkuNickNameIsExist(uNickName)) {
			return ((User) userDao.findByUnickName(uNickName).get(0)).getUid();
		} else {
			return 0;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ourmarket.services.IUserService#GetUserByuNickName(java.lang.String)
	 * 
	 * 根据用户名查找用户信息
	 */
	@Override
	public User getUserByuNickName(String uNickName) {
		if (checkuNickNameIsExist(uNickName)) {
			return (User) userDao.findByUnickName(uNickName).get(0);
		} else {
			return null;
		}
	}
}
