package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ourmarket.daos.AdressDAO;
import ourmarket.models.Adress;
import ourmarket.services.IAdressService;

/**
 * 
 * @author Admin_YangD
 * @date  2017年4月28日
 */
public class AdressServiceClass implements IAdressService{

	@Autowired AdressDAO adressDAO;
	
	@Override
	public void createAdress(Adress adress) {
		// TODO Auto-generated method stub
		adressDAO.save(adress);
	}

	@Override
	public void deleteAdress(Adress adress) {
		// TODO Auto-generated method stub
		adressDAO.delete(adress);
	}

	@Override
	public void updateAdres(Adress adress) {
		// TODO Auto-generated method stub
		adressDAO.update(adress);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Adress> findAllAdresses() {
		// TODO Auto-generated method stub
		return adressDAO.findAll();
	}

}
