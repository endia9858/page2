package page2.main.dao;

import page2.main.dao.config.Configuration;
import page2.main.dao.mapper.UserMapper;
import page2.main.domain.Login;
import page2.main.domain.User;

public class UserDaoImpl implements UserDao{
	private UserMapper mapper;
	private int cnt = 0;
	private boolean flag = false;
	
	public UserDaoImpl(){
		mapper = Configuration.getMapper(UserMapper.class);
	};
	
	@Override
	public boolean delUser(int userNo){
		cnt = mapper.deleteUser(userNo);
		if(cnt>0)
			flag = true;
		else
			flag = false;
			
			return flag;
	}

	@Override
	public boolean addUser(User user) {
		cnt = mapper.addUser(user);
		if(cnt>0)
			flag = true;
		else
			flag = false;
			
		return flag;
	}
	
	@Override
	public User getUser(Login login){
		return mapper.getUser(login);
	}
	
	@Override
	public User search(String id){
		return mapper.search(id);
	}
}
