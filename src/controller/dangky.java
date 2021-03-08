package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.nguoidung;
import services.nguoidungservice;

/**
 * Servlet implementation class dangky
 */
@WebServlet("/dangky")
public class dangky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangky() {
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
			String hoten = request.getParameter("hoten");
			String ho = request.getParameter("ho");
			String ten = request.getParameter("ten");
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			
			nguoidung nd = new nguoidung();
			nd.setHoten(hoten);
			nd.setHo(ho);
			nd.setTen(ten);
			nd.setEmail(email);
			nd.setMatkhau(pass);
			
			boolean kq = nguoidungservice.DangKy(nd);
			if(kq) {
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		
	}

}
