package MavenProject.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import MavenProject.entity.Account;
import MavenProject.entity.MapperAccount;
@Repository
public class TestDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<Account> GetDataAccount() {
		List<Account> list = new ArrayList<Account>();
		String sql = "SELECT * FROM ACCOUNTS";
		list = _jdbcTemplate.query(sql, new MapperAccount());
		return list;
	}
}
