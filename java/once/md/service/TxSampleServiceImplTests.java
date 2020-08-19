package once.md.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TxSampleServiceImplTests {

	@Autowired
	private TxSampleService service;
	
	@Test
	public void testDoDmlN() {
		//String data = "什覗元";
		String data = "什覗元しいしいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい";
		long len = data.getBytes().length;
		log.info("#郊戚闘 呪 : "+len+"bytes");
		service.doDmlN(data);
	}

}
