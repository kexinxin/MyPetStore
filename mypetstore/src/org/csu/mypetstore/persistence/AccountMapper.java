package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Account;

public interface AccountMapper {

	Account getAccountByUsername(String username);

	Account getAccountByUsernameAndPassword(Account account);

	void insertAccount(Account account);

	void insertProfile(Account account);

	void insertSignon(Account account);

	void updateAccount(Account account);

	void updateProfile(Account account);

	void updateSignon(Account account);
}
