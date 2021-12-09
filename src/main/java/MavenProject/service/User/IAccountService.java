package MavenProject.service.User;

import org.springframework.stereotype.Service;

import MavenProject.entity.Users;

@Service
public interface IAccountService {

	public int AddAccount(Users user);
	
	public boolean CheckAccount(Users user);
	
	public boolean CheckValidate(Users user);
}
