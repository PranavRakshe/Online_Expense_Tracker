package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ExpenseDao;
import com.db.HibernateUtil;
@WebServlet("/updateExpense")
public class UpdateExpenseServlet extends HttpSErvlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		String title = req.getParameter("title");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String description = req.getParameter("description");
		String price = req.getParameter("price");
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("loginUser");
		Expense ex = new Expense(title,date,time,description,price,user);	
		ex.setId(id);
		ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
		boolean f = dao.saveExpense(ex);
		
		if(f) {
			system.out.println("Expense Updated Successfully");
			resp.sendRedirect("user/view_expense.jsp");
			
		}else {
			System.out.println("Error");
			resp.sendRedirect("user/view_expense.jsp");
		}
		
	}

}
