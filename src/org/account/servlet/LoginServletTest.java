package org.account.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.account.entity.Account;
import org.account.service.impl.AccountServiceImpl;

/**
 * Servlet implementation class LoginServletTest
 */
@WebServlet("/LoginServletTest")
public class LoginServletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServletTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
		String checkcodeClient=(String)request.getParameter("checkcode");
		//	��ʵ����֤��ֵ
		String checkcodeSever=(String)request.getSession().getAttribute("CHECKCODE");
		if(!checkcodeSever.equals(checkcodeClient)) {
			request.setAttribute("error", "WrongCheckCode");
        	request.getRequestDispatcher("/HITMenProject/log_sign/login.jsp").forward(request,response);
		}
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        AccountServiceImpl dao = new AccountServiceImpl();
        Account account= dao.queryAccountToLogin(name,password);
        
        if(account!=null) {//�Ƿ��ܹ��ɹ�ȡ��account
        	Cookie cookie=new Cookie("username",name);
        	cookie.setMaxAge(24*60*60);//1 Day
        	cookie.setPath("/");
        	response.addCookie(cookie);
        	request.getSession().setAttribute("account", account);
        	response.sendRedirect("/HITMenProject/log_user/index.jsp");
        	
//        	request.setAttribute("account", account);
//        	request.getRequestDispatcher("/log_user/index.jsp").forward(request,response);
        }else {
        	request.setAttribute("error", "NoAccount");
        	request.getRequestDispatcher("/HITMenProject/log_sign/login.jsp").forward(request,response);
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
