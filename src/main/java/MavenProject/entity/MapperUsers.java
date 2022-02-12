package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUsers implements RowMapper<Users> {

	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
//		Users user = new Users();
//		user.setId(rs.getInt(1));
//		user.setUserName(rs.getString(2));
//		user.setPassword(rs.getString(3));
//		user.setActive(rs.getInt(4));
//		user.setRole(rs.getInt(5));
//		user.setFullName(rs.getString(6));
//		user.setAddress(rs.getString(7));
		
		Users user = new Users();
		user.setId(rs.getInt(7));
		user.setUserName(rs.getString(1));
		user.setActive(rs.getInt(2));
		user.setPassword(rs.getString(3));
		user.setRole(rs.getInt(4));
		user.setFullName(rs.getString(5));
		user.setAddress(rs.getString(6));
		return user;
	}

}
