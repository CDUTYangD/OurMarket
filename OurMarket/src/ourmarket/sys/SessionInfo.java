package ourmarket.sys;

import java.util.Date;

/**
 * 用户会话信息类
 * @author Admin_YangD
 *
 */
public class SessionInfo {
	public int userID;	//用户id
	public String userName;	//用户名
	public String phone;	//手机号
	public int roleID;	//人员类别
	public Date loginTime;	//登陆时间
	public Date lastDate;	//上一次访问时间
	public Long headImageID;	//头像id
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public Date getLastDate() {
		return lastDate;
	}
	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}
	public Long getHeadImageID() {
		return headImageID;
	}
	public void setHeadImageID(Long headImageID) {
		this.headImageID = headImageID;
	}
	
}
