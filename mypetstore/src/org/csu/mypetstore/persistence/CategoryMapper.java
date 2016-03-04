package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.*;
import java.util.*;
public interface CategoryMapper {
	//select all Categories
	List<Category> getCategoryList();
	//select a Category By ID
	Category getCategory(String categoryID);
	
}
