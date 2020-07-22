package org.account.dao;

import org.account.entity.Account;

import java.io.IOException;
import java.util.List;

public interface IAccountDao {
    public boolean isExist(String name) ;

    public void addAccount(Account account) ;

    public void deleteAccountByName(String name) ;

    public void updateAccountByName(Account account) ;

    public Account queryAccountByName(String name)  ;

    public List<Account> queryAllAccounts() ;

    public Account queryAccountToLogin(String name, String password);

}
