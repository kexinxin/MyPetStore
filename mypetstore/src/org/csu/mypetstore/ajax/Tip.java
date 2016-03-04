package org.csu.mypetstore.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;

public class Tip extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CatalogService catalogService = new CatalogService();
		List<Product> information;
		String key = request.getParameter("key");
		information = catalogService.getProductListByCategory(key);
		String id = "";
		String name = "";
		for (Product product : information) {
			id += " " + product.getCategoryId();
			name += " " + product.getName();
		}
		PrintWriter out = response.getWriter();
		response.setContentType("text/xml");
		out.println("<response>");
		out.println("<name>" + "name: " + name + "</name>");
		out.println("</response>");
		out.close();
	}
}
