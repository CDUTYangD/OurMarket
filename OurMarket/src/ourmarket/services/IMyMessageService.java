package ourmarket.services;

import java.sql.Timestamp;
import java.util.List;

import ourmarket.models.Message;

/**
 * @author 16558
 * */
public interface IMyMessageService {
	
	//增加
	void creatMessage(Message message);
	//删除
	void deleteMessage(Message message);
	//查询-时间-对象
	List<Message> selectMessage(Integer uid1,Integer uid2,Timestamp timestamp);
	//查询-对象
	List<Message> selectMessage(Integer uid1,Integer uid2);
	
	List<Message> selectByUid2(Integer uid2);
}
