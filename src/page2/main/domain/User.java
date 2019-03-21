package page2.main.domain;

import java.sql.Date;

public class User {
	private int userNo;
	private String id;
	private String passWord;
	private String email;
	private Date regDate;
	
	public User(){}

	public User(int userNo, String id, String passWord,String email, Date regDate) {
		this.userNo = userNo;
		this.id = id;
		this.passWord = passWord;
		this.email = email;
		this.regDate = regDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public String getId() {
		return id;
	}

	public String getPassWord() {
		return passWord;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString(){
		return String.format("%d %s %s %s %s", userNo,id,passWord,email,regDate);
	}
	
}
