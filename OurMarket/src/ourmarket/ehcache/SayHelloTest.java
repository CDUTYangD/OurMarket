package ourmarket.ehcache;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration({"classpath:applicationContext.xml"}) 
public class SayHelloTest {
@Autowired ISayHello sayHello;
	@Test
	public void testSayhello() throws InterruptedException{
		System.out.println("��һ�ε��ã�" + sayHello.getTimestamp("param"));
        Thread.sleep(2000);
        System.out.println("2��֮����ã�" + sayHello.getTimestamp("param"));
        Thread.sleep(11000);
        System.out.println("�ٹ�11��֮����ã�" + sayHello.getTimestamp("param"));
	}
}
