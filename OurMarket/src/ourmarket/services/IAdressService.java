package ourmarket.services;

import java.util.List;

import ourmarket.models.Adress;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public interface IAdressService {
	//增
	void createAdress(Adress adress);
	//删
	void deleteAdress(Adress adress);
	//改
	void updateAdress(Adress adress);
	//查
	List<Adress>findAllAdresses();
}
