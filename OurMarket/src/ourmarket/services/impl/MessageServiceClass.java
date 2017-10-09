package ourmarket.services.impl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.MessageDAO;
import ourmarket.models.Message;
import ourmarket.services.IMyMessageService;
@Service
public class MessageServiceClass implements IMyMessageService {

	@Autowired
	MessageDAO messagesDao;
	@Override
	public void creatMessage(Message message) {
		// TODO Auto-generated method stub
       messagesDao.save(message);
	}

	@Override
	public void deleteMessage(Message message) {
		// TODO Auto-generated method stub
		messagesDao.delete(message);
	}

	@Override
	public List<Message> selectMessage(Integer uid1, Integer uid2, Timestamp timestamp) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> selectMessage(Integer uid1, Integer uid2) {
		// TODO Auto-generated method stub
		return messagesDao.findByAllID(uid1, uid2);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> selectByUid2(Integer uid2) {
		// TODO Auto-generated method stub
		return messagesDao.findByUid2(uid2);
	}

}
