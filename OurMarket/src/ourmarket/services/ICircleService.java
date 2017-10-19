package ourmarket.services;

import java.util.List;

import ourmarket.models.CircleInfo;

/**
 * 
 * @author Admin_YangD
 * @date  2017年5月16日
 */
public interface ICircleService {
	//增
	void createCircle(CircleInfo circleInfo);
	//删
	void deleteCircle(CircleInfo circleInfo);
	//改
	void updateCircle(CircleInfo circleInfo);
	//查
	List<CircleInfo>findAllCircles();
	CircleInfo findCircleById(Short id);
}
