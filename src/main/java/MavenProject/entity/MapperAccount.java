package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAccount implements RowMapper<Account> {

	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account account = new Account();
		account.setUserName(rs.getString(1));
		account.setIsActive(rs.getBoolean(2));
		account.setPassword(rs.getString(3));
		account.setRole(rs.getString(4));
		return null;
	}
	
}
