package once.md.persistence;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import once.md.dao.BoardDao;
import once.md.domain.Board;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardDaoTests {
	@Autowired
	private BoardDao boardDao;
	
	/*
	@Test
	public void testList() {
		List<Board> list = boardDao.list(1, 4);
		log.info("#testList() list(0) : "+list);
	}
	
	@Test
	public void testContent() {
		long total = boardDao.getTotalCount();
		log.info("#testTotalCount : "+total);
	}
	*/
	/*
	@Test
	public void testInsert() {
		Board board = new Board(-1, "글쓴이디", "이메일이다", "제목이다", "내용이다", null);
		boardDao.insert(board);
		
		List<Board> list = boardDao.list(1,4);
		log.info("#testInsert() list(2) : "+list);
	}
	
	@Test
	public void testUpdate() {
		Board board = new Board(18, "글쓴이다수정", "이메일이다", "제목이다", "내용이다", null);
		boardDao.update(board);
		
		List<Board> list = boardDao.list(1,4);
		log.info("#testUpdate() list(3) : "+list);
	}
	*/
	
	@Test
	public void testDelete() {
		boardDao.delete(18);
		List<Board> list = boardDao.list(1,4);
		log.info("#testDelete() list(4) : "+list);
	}

}
