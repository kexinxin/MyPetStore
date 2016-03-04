package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.AccountMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;


public class AccountService {

	ApplicationContext appContext = new ClassPathXmlApplicationContext(
			"/applicationContext.xml");
	private AccountMapper accountMapper=appContext
			.getBean(AccountMapper.class);

	public Account getAccount(String username) {
		return accountMapper.getAccountByUsername(username);
	}

	public Account getAccount(String username, String password) {
		Account account = new Account();
		account.setUsername(username);
		account.setPassword(password);
		return accountMapper.getAccountByUsernameAndPassword(account);
	}

	@Transactional
	public void insertAccount(Account account) {
		accountMapper.insertAccount(account);
		accountMapper.insertProfile(account);
		accountMapper.insertSignon(account);
	}

	@Transactional
	public void updateAccount(Account account) {
		accountMapper.updateAccount(account);
		accountMapper.updateProfile(account);

		if (account.getPassword() != null && account.getPassword().length() > 0) {
			accountMapper.updateSignon(account);
		}
	}

}
