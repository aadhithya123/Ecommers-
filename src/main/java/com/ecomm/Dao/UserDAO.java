package com.ecomm.Dao;
import java.util.List;

import com.ecomm.modal.User;
import com.ecomm.modal.User_Roll;

public interface UserDAO {
	
public boolean addUser(User user);
public User find(int id);
public List<User>getAllUser();
public boolean deleteUser(User u);
public boolean updateUser(User u);
//public boolean addAuthority(User_Roll user_roll);
public boolean addUser_Roll(User_Roll user_roll);
public User getUserByName(String username);
public User getUserByPhone(Long userphone);
}
