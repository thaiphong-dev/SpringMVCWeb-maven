package MavenProject.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MavenProject.entity.MapperProducts;
import MavenProject.entity.MapperUsers;
import MavenProject.entity.Products;
import MavenProject.entity.Users;

@Repository
public class UserDao extends BaseDao {
	public int AddAccount(Users user) {

		StringBuffer sql = new StringBuffer();
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
		sql.append("'" + user.getUserName() + "', ");
		sql.append("'" + user.getPassword() + "', ");
		sql.append("" + user.getActive() + ", ");
		sql.append("" + user.getRole() + ", ");
		sql.append("'" + user.getFullName() + "', ");
		sql.append("'" + user.getAddress() + "' ");
		sql.append(")");

		int insert = _JdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int UpdateUser(Users user) {

		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE ");
		sql.append("USERS ");
		sql.append("SET ");
		sql.append("USERNAME = '" + user.getUserName() + "', ");
		sql.append("ACTIVE = " + user.getActive() + " , ");
		sql.append("ROLE = " + user.getRole() + " , ");
		sql.append("FULLNAME = '" + user.getFullName() + "', ");
		sql.append("ADDRESS = '" + user.getAddress() + "' ");
		sql.append("WHERE ");
		sql.append("ID = " + user.getId() + " ");

		
		int insert = _JdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public  List<Users> DeleteUser(String userName) {
		String sql = "delete from USERS where USERNAME = '" + userName + "'";
		int insert = _JdbcTemplate.update(sql.toString());
		List<Users> list = new ArrayList<Users>();
		list = GetDataUser();
		return list;
	}

	public Users GetUserByAccount(Users user) {
		String sql = "select * from USERS where USERNAME = '" + user.getUserName() + "'";
		Users result = _JdbcTemplate.queryForObject(sql, new MapperUsers());

		return result;
	}
	
	public List<Users> GetDataUser() {
		List<Users> list = new ArrayList<Users>();
		String sql = "SELECT * FROM USERS";
		list = _JdbcTemplate.query(sql, new MapperUsers());
		return list;
	}
}
