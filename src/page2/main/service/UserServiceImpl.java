package page2.main.service;

import page2.main.dao.UserDao;
import page2.main.dao.UserDaoImpl;
import page2.main.domain.Login;
import page2.main.domain.User;

public class UserServiceImpl implements UserService{
	private UserDao userDao;

	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
	}
	
	@Override
	public boolean join(User user){
		return userDao.addUser(user);
	}
	
	@Override
	public boolean secede(int userNo){
		return userDao.delUser(userNo);
	}
	
	@Override
	public User getUser(Login login){
		return userDao.getUser(login);
	}
	
	@Override
	public User search(String id){
		return userDao.search(id);
	}
}
