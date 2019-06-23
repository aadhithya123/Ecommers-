package com.ecomm.Dao;
import java.util.List;

import com.ecomm.modal.Category;

public interface CategoryDAO {
	
public boolean addCategory(Category c);
public Category find(int id);
public List<Category>getAllCategory();
public boolean updatecategory(Category category);
public boolean deleteCategory(Category category);
}
