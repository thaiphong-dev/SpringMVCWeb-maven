package MavenProject.service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import MavenProject.entity.Users;

@Service
public interface IAccountServiceAdmin {

	public int AddAccount(Users user);
	
	public boolean CheckAccount(Users user);
	
	public boolean CheckValidate(Users user);
	
	public List<Users> GetDataUser();
	
	public  List<Users> DeleteUser(String userName);
	
	public int UpdateUser(Users user);
	
	public int AddAccountByAdmin(Users user);
	
}
