import org.springframework.beans.factory.annotation.Autowired;

import com.wecamp.mapper.SearchMapper;

public class test {
	
	@Autowired
	public SearchMapper searchMapper;
	
	public void print() {
		System.out.print(searchMapper.select());
	}
	
	public static void main(String[] args) {
		
		new test().print();
	}

}
