package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.NdbLoadBalanceExceptionChecker;

import model.tintucmodel;
import services.tintucservice;

/**
 * Servlet implementation class suatintuc
 */
@WebServlet("/suatintuc")
public class suatintuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suatintuc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("idtintuc");
		String tieude = request.getParameter("tieude");
		String motangan = request.getParameter("motangan");
		String anhdaidien = request.getParameter("anhdaidien");
		String chitietbaiviet = request.getParameter("chitietbaiviet");
		String nguoidang = request.getParameter("nguoidang");
		String ngaydang = request.getParameter("ngaydang");
		
		System.out.println(id);
		System.out.println(tieude);
		System.out.println(motangan);
		System.out.println(anhdaidien);
		System.out.println(chitietbaiviet);
		System.out.println(nguoidang);
		System.out.println(ngaydang);
		
		tintucmodel tt = tintucservice.LayTinTheoID(id);
		
		tt.setTieude(tieude);
		tt.setMotangan(motangan);
		tt.setAnhdaidien(anhdaidien);
		tt.setChitietbaiviet(chitietbaiviet);
		tt.setNguoidang(nguoidang);
		tt.setNgaydang(ngaydang);
		
		tintucservice.Suatintuc(tt);
		response.sendRedirect(request.getContextPath() + "/index2.jsp");
	}

}
