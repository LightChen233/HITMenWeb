package org.account.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.account.entity.Account;
import org.account.service.impl.AccountServiceImpl;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        System.out.println(name+"---"+password);
        AccountServiceImpl dao = new AccountServiceImpl();
        Account account= new Account(name,password,"");
        		dao.updateAccountByName(account);

        if(account!=null) {//�Ƿ��ܹ��ɹ�ȡ��account
        	request.setAttribute("account", account);
        	request.getRequestDispatcher("Ajax.jsp").forward(request,response);
        }else {
        	request.setAttribute("error", "NoAccount");
        	request.getRequestDispatcher("/log_sign/login.jsp").forward(request,response);

        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
