package org.csu.mypetstore.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

public class UsernameIsExistServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("sname");
		Account account = new Account();
		account.setUsername(username);
		AccountService service = new AccountService();
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		if (service.getAccount(username) != null) {
			out.println("<message>Exist</message>");
		} else {
			out.println("<message>NotExit</message>");
		}
		out.flush();
		out.close();
	}

}
