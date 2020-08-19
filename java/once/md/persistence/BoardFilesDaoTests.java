package once.md.persistence;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import once.md.domain.Files;
import once.md.mapper.BoardMapper2;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardFilesDaoTests {
	@Autowired
	BoardMapper2 mapper;
	
	@Test
	public void insertF() {
		List<Files> list = new ArrayList<Files>();
		list.add(new Files(-1L, "fname", "ofname", 1000, -1));
		list.add(new Files(-1L, "fname", "ofname", 1000, -1));
		mapper.insertF(list);
	}
}
