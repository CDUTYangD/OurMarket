package ourmarket.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ourmarket.models.Goods;
import ourmarket.services.IGoodService;
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration({"classpath:applicationContext.xml"}) 
public class GoodServiceClassTest {

	@Autowired IGoodService goodService;
	
	@Test
	public void testCreateGood() {
		Goods goods=new Goods();
		goods.setGid((int) 0);
		goods.setGname("益达");
		goods.setGnum(10);
		java.util.Date  date=new java.util.Date();
		java.sql.Timestamp d=new java.sql.Timestamp(date.getTime());
		goods.setGproductTime(d);
		goods.setGtitle("便宜");
		goods.setGprice((float) 12.5);
		goods.setGtype((short) 4);
		goods.setGstate((short) 0);
		goodService.createGood(goods);
	}

	@Test
	public void testDeleteGood() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateGood() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindAllGoods() throws InterruptedException{
		goodService.findAllGoods();
	}

}
