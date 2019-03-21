package page2.main.dao.mapper;

import page2.main.domain.Login;
import page2.main.domain.User;

public interface UserMapper {
	int addUser(User user);
	int deleteUser(int userNo);
	User getUser(Login Login);
	User search(String id);
}
