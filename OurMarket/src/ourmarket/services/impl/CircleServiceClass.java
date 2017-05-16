package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.CircleInfoDAO;
import ourmarket.models.CircleInfo;
import ourmarket.services.ICircleService;
@Service
public class CircleServiceClass implements ICircleService{
	@Autowired CircleInfoDAO circleInfoDAO;
	@Override
	public void createCircle(CircleInfo circleInfo) {
		// TODO Auto-generated method stub
		circleInfoDAO.save(circleInfo);
	}

	@Override
	public void deleteCircle(CircleInfo circleInfo) {
		// TODO Auto-generated method stub
		circleInfoDAO.delete(circleInfo);
	}

	@Override
	public void updateCircle(CircleInfo circleInfo) {
		// TODO Auto-generated method stub
		circleInfoDAO.update(circleInfo);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CircleInfo> findAllCircles() {
		// TODO Auto-generated method stub
		return circleInfoDAO.findAll();
	}

}
