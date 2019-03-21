package page2.main.service;

import page2.main.domain.Login;
import page2.main.domain.User;


public interface UserService {
	boolean join(User user);
	boolean secede(int userNo);
	User getUser(Login login);
	User search(String id);
}
