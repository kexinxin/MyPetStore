package org.csu.mypetstore.persistence;

import java.util.List;

import org.csu.mypetstore.domain.MyLog;

public interface MyLogMapper {
	public List<MyLog> getMyLogList();

	void insertLog(MyLog log);

}
