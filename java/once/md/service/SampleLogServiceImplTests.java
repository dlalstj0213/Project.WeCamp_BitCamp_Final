package once.md.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import once.md.persistence.AddressDaoTests;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SampleLogServiceImplTests {
	@Setter(onMethod_ = {@Autowired})
	private SampleLogService service;
	
	@Test
	public void testAdd() throws Exception{
		int result = service.add("10", "20");
		log.info("#testAdd() result: "+result);
	}
	
	/*
	@Test
	public void testAddError() throws Exception{
		int result = service.add("10", "È£·©ÀÌ");
		log.info("#testAddError() result: "+result);//Ãâ·Â ¾È µÊ
	}
	*/

}
