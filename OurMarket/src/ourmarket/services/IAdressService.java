package ourmarket.services;

import java.util.List;

import ourmarket.models.Adress;

/**
 * 
 * @author Admin_YangD
 * @date  2017��4��28��
 */
public interface IAdressService {
	//��
	void createAdress(Adress adress);
	//ɾ
	void deleteAdress(Adress adress);
	//��
	void updateAdres(Adress adress);
	//��
	List<Adress>findAllAdresses();
}
