package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.NdbLoadBalanceExceptionChecker;

import model.sanpham;
import model.tintucmodel;
import services.sanphamsevervice;
import services.tintucservice;

/**
 * Servlet implementation class suasanpham
 */
@WebServlet("/suasanpham")
public class suasanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suasanpham() {
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
		
		String id = request.getParameter("idsanpham");
		String tensanpham = request.getParameter("tensanpham");
		String anhdaidien = request.getParameter("anhdaidien");
		String gia = request.getParameter("gia");
		String chitiet = request.getParameter("chitiet");
		
		System.out.println(id);
		System.out.println(tensanpham);
		System.out.println(anhdaidien);
		System.out.println(gia);
		System.out.println(chitiet);
		
		sanpham spdt = sanphamsevervice.LaySanPhamTheoID(id);
		
		spdt.setTensanpham(tensanpham);
		spdt.setAnhdaidien(anhdaidien);
		spdt.setGia(gia);
		spdt.setChitiet(chitiet);
		
		sanphamsevervice.Suasanpham(spdt);
		response.sendRedirect(request.getContextPath() + "/index2.jsp");
	}

}
