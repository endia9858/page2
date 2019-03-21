package page2.main.dao;

import page2.main.domain.Login;
import page2.main.domain.User;

public interface UserDao {
	boolean addUser(User user);
	boolean delUser(int userNo);
	User getUser(Login login);
	User search(String id);
}


