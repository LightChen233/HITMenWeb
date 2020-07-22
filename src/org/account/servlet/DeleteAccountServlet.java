package org.account.servlet;

import org.account.service.IAccountService;
import org.account.service.impl.AccountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public DeleteAccountServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //删除
        request.setCharacterEncoding("UTF-8");
        //接受前端传来学号
        String name =request.getParameter("name");
        IAccountService service=new AccountServiceImpl();
        int result=service.deleteAccountByName(name);
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        if(result==1) {
//			response.getWriter().println("删除成功");
            response.sendRedirect("QueryAllAccountsServlet");//重新查询
        }else {
            response.getWriter().println("Erro");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
