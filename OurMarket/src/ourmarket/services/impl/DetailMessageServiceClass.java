package ourmarket.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.DetailMessageDAO;
import ourmarket.models.DetailMessage;
import ourmarket.services.IDetailMessageService;

@Service
public class DetailMessageServiceClass implements IDetailMessageService{

	@Autowired
	DetailMessageDAO DMessageDAO;
	
	@Override
	public void addMessage(DetailMessage message) {
		// TODO Auto-generated method stub
		DMessageDAO.save(message);
	}

}
