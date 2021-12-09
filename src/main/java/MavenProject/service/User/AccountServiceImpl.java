package MavenProject.service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MavenProject.dao.UserDao;
import MavenProject.entity.Users;
@Service
public class AccountServiceImpl implements IAccountService {
@Autowired
UserDao userDao = new UserDao();

public int AddAccount(Users user) {
	user.setActive(1);
	user.setRole(1);
	user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
	
	return userDao.AddAccount(user);
}

public boolean CheckAccount(Users user) {
	String pass = user.getPassword();
	
	user = userDao.GetUserByAccount(user);
	if(user != null) {
		if(BCrypt.checkpw(pass, user.getPassword())) {
			return true;
		}
		else {
			return false;
		}
		
	}
	return false;
}

public boolean CheckValidate(Users user) {
	user = userDao.GetUserByAccount(user);
	if(user != null) {
	return false;
	}
	return true;
}

}
