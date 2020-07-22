package org.account.dao.impl;


import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.account.dao.IAccountDao;
import org.account.entity.Account;
import org.account.mapper.AccountMapper;


public class MybatisDao implements IAccountDao{
	Reader reader =Resources.getResourceAsReader("config.xml");
	SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(reader);
	SqlSession session=sessionFactory.openSession();
	AccountMapper accountMapper=session.getMapper(AccountMapper.class);
	public MybatisDao() throws IOException {
		
	}
	
	public Account queryAccountByName(String name)  {
		Account account=accountMapper.queryAccountByName(name);
		return account;
	}

	public List<Account> queryAllAccounts() {
		 List<Account> accounts=accountMapper.queryAllAccounts();
		System.out.println(accounts);
		return accounts;
		
	}

	public void addAccount(Account account) {
		accountMapper.addAccount(account);
		session.commit();
	}

	public void deleteAccountByName(String name) {
		accountMapper.deleteAccountByName(name);
		session.commit();
	}
	
	public void updateAccountByName(Account account) {
		accountMapper.updateAccountByName(account);
		session.commit();
	}
	
	public Account queryAccountToLogin(String name, String password) {
		Account account=accountMapper.queryAccountToLogin(new Account(name,password,null));
		return account;
	}
	
	public void closeSession() {
		session.close();
	}
	public boolean isExist(String name) {
		return queryAccountByName(name)!=null;
	}
	
	
		public static void main(String[] args) throws IOException {
		MybatisDao t=new MybatisDao();
//		t.deleteAccountByName("jjs");
//		t.updateAccountByName(new Account("jjs","adsfaasd23","123123@qq.com"));
//		t.addAccount(new Account("jjs","adsfa123","123123@qq.com"));
//		t.queryAllAccounts();
		System.out.println(t.queryAccountToLogin("zs", "111"));
		t.closeSession();
//		t.queryAccountByName();
	}
}
