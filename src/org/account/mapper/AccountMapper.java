package org.account.mapper;

import java.util.List;

import org.account.entity.Account;

public interface AccountMapper {
	void addAccount(Account account);
	void deleteAccountByName(String name);
	void updateAccountByName(Account account);
	Account queryAccountByName(String name);
	List<Account> queryAllAccounts();
	Account queryAccountToLogin(Account account);
}
