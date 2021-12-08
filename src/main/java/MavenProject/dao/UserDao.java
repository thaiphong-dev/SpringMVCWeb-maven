package MavenProject.dao;

import org.springframework.stereotype.Repository;

import MavenProject.entity.MapperUsers;
import MavenProject.entity.Users;

@Repository
public class UserDao extends BaseDao {
public int AddAccount(Users user) {
	
	StringBuffer  sql = new StringBuffer();
	sql.append("insert ");
	sql.append("into USERS ");
	sql.append("( ");
	sql.append("USERNAME, ");
	sql.append("PASSWORD, ");
	sql.append("ACTIVE, ");
	sql.append("ROLE, ");
	sql.append("FULLNAME, ");
	sql.append("ADDRESS ");
	sql.append(") ");
	sql.append("VALUES ");
	sql.append("( ");
	sql.append("'"+user.getUserName()+"', ");
	sql.append("'"+user.getPassword()+"', ");
	sql.append(""+user.getActive()+", ");
	sql.append(""+user.getRole()+", ");
	sql.append("'"+user.getFullName()+"', ");
	sql.append("'"+user.getAddress()+"' ");
	sql.append(")");
	
	
	int insert = _JdbcTemplate.update(sql.toString());
	return insert;
}

public Users GetUserByAccount(Users user) {

	String sql = "select * from USERS where USERNAME = '"+user.getUserName()+"'";
	Users result = _JdbcTemplate.queryForObject(sql, new MapperUsers());
	
	
	
	return result;
}
}
