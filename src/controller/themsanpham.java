package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.sanpham;
import model.tintucmodel;
import services.sanphamsevervice;
import services.sanphamsevervice;
import services.tintucservice;;

/**
 * Servlet implementation class themsanpham
 */
@WebServlet("/themsanpham")
public class themsanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themsanpham() {
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
		
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		try {
			String tensanpham = request.getParameter("tensanpham");
			String anhdaidien = request.getParameter("anhdaidien");
			String gia = request.getParameter("gia");
			String chitiet = request.getParameter("chitietbaiviet");
			
			sanpham spdt = new sanpham();
			spdt.setTensanpham(tensanpham);
			spdt.setAnhdaidien(anhdaidien);
			spdt.setGia(gia);
			spdt.setChitiet(chitiet);
			
			boolean kq = sanphamsevervice.Themsanpham(spdt);
			if(kq) {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("themsanpham.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		
	}

}
