package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.CropDao;
import com.model.Crops;
import com.model.Farmer;

@WebServlet("/AddCrop")
public class AddCrop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Farmer f = (Farmer)session.getAttribute("farmer");
		String name = request.getParameter("crop_name");
		String type = request.getParameter("crop_type");
		int qty = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));

		Crops c = new Crops();
	
		c.setFarmer_id(f.getfarmerId());
		c.setCrop_name(name);
		c.setCrop_type(type);
		c.setQuantity(qty);
		c.setPrice(price);

		CropDao cd = new CropDao();
		String status = cd.addcrops(c);

		if (status.equals("success")) {
			RequestDispatcher rd = request.getRequestDispatcher("viewCrop.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("addCrop.jsp");
			rd.forward(request, response);
		}

	}

}