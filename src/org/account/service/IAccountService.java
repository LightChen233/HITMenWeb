package org.account.service;

import org.account.entity.Account;

import java.util.List;

public interface IAccountService {
    //	�?
    public int addAccount(Account account) ;

    //	�?
    public int deleteAccountByName(String name) ;

    //	�?
    public int updateAccountByName(Account account) ;

    //	�?
    //根据学号查询�?个人
    public Account queryAccountByName(String name) ;

    public Account queryAccountToLogin(String name, String password);

    //查询全部学生
    public List<Account> queryAllAccounts();


}
