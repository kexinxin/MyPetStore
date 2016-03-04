package org.csu.mypetstore.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;

public class AutoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CatalogService catalogService = new CatalogService();
		String keyword = request.getParameter("names");
		List<Product> productList = catalogService.searchProductList(keyword);
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		out.println("<products>");
		for (Product product : productList) {
			out.println("<name>" + product.getName() + "</name>");
		}
		out.println("</products>");
		out.flush();
		out.close();
	}

}
