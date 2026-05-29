package com.controller;

import java.io.IOException;

import com.dao.FarmerDao;
import com.model.Farmer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/FarmerRegister")
public class FarmerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("welcome to servlet");
		
		String name=request.getParameter("name");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		
		Farmer f=new Farmer();
		f.setFullname(name);
		f.setUsername(uname);
		f.setPassword(pass);
		f.setMobile(mobile);
		
		FarmerDao fdo=new FarmerDao();
		String status=fdo.registerfarmer(f);
		
		if(status.equals("success")) {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}