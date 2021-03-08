package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.tintucmodel;
import services.tintucservice;;

/**
 * Servlet implementation class themtintuc
 */
@WebServlet("/themtintuc")
public class themtintuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themtintuc() {
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
			String tieude = request.getParameter("tieude");
			String motangan = request.getParameter("motangan");
			String anhdaidien = request.getParameter("anhdaidien");
			String chitietbaiviet = request.getParameter("chitietbaiviet");
			String nguoidang = request.getParameter("nguoidang");
			String ngaydang = request.getParameter("ngaydang");
			
			tintucmodel tt = new tintucmodel();
			tt.setTieude(tieude);
			tt.setMotangan(motangan);
			tt.setAnhdaidien(anhdaidien);
			tt.setChitietbaiviet(chitietbaiviet);
			tt.setNguoidang(nguoidang);
			tt.setNgaydang(ngaydang);
			
			boolean kq = tintucservice.Themtintuc(tt);
			if(kq) {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("themtintuc.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		
	}

}
