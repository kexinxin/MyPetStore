package org.csu.mypetstore.persistence;
import java.util.*;
import org.csu.mypetstore.domain.*;
public interface ItemMapper {

	  void updateInventoryQuantity(Map<String, Object> param);

	  int getInventoryQuantity(String itemId);

	  List<Item> getItemListByProduct(String productId);

	  Item getItem(String itemId);
}
