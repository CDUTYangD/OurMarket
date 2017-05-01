package ourmarket.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ourmarket.models.User;
import ourmarket.services.IUserService;
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration({"classpath:applicationContext.xml"}) 
/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public class UserServiceClassTest {

	@Autowired IUserService userservice;
	
	@Test
	public void testGetAllUsers() {
		@SuppressWarnings("unused")
		List<User> users=userservice.findAllUsers();
	}

	@Test
	public void testFindUserById() {
		@SuppressWarnings("unused")
		User user=userservice.findUserById(1);
	}

	@Test
	public void testCreateUser() {
		/*User user=new User();
		user.setUid(0);
		user.setRid(1);
		user.setImageListId((long) 1);
		user.setUnickName("唐磊");
		user.setUpassword("123");
		user.setUphone("18780895336");
		user.setUemial("135964852@qq.com");
		user.setUcredit(5);
		user.setUgender((short) 0);
		userservice.createUser(user);*/
	}

	@Test
	public void testDeleteUserById() {
		userservice.deleteUserById(8);
	}

	@Test
	public void testUpdateUser() {
		/*User user=userservice.findUserById(25);
		user.setUnickName("陈超");
		userservice.updateUser(user);*/
	}

	@Test
	public void testDeleteUser() {
		/*User user=userservice.findUserById(7);
		userservice.deleteUser(user);*/
	}

}
