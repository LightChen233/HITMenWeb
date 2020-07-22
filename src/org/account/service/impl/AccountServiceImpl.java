package org.account.service.impl;

import org.account.dao.IAccountDao;
import org.account.dao.impl.MybatisDao;
import org.account.entity.Account;
import org.account.service.IAccountService;

import java.io.IOException;
import java.util.List;

public class AccountServiceImpl implements IAccountService {
    IAccountDao accountDao= new MybatisDao();
    public AccountServiceImpl() throws IOException{
		// TODO Auto-generated constructor stub
	}
    public int addAccount(Account account) {
        if(!accountDao.isExist(account.getName())) {
            accountDao.addAccount(account);
            return 1;
        }else {
            return 0;
        }
    }
    //	�?
    public int deleteAccountByName(String name) {
        System.out.println(name);
        if(accountDao.isExist(name)) {
            accountDao.deleteAccountByName(name);
            return 1;
        }else {
            return 0;
        }
    }
    //	�?
    public int updateAccountByName(Account account) {
        if(accountDao.isExist(account.getName())) {
        	accountDao.updateAccountByName(account);
            return 1;
        }else {
            return 0;
        }
    }

    public Account queryAccountByName(String name) {
        return accountDao.queryAccountByName(name);
    }

    @Override
    public Account queryAccountToLogin(String name, String password) {
        return accountDao.queryAccountToLogin(name,password);
    }
 
    //查询全部用户
    public List<Account> queryAllAccounts(){
        return accountDao.queryAllAccounts();
    }

}
