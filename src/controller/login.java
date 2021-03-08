package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.dbconnection;
import model.nguoidung;
import services.nguoidungservice;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    public static int id;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Láº¥y value tá»« input cÃ³ name="thudientu"
		String email = request.getParameter("thudientu");
		//Láº¥y value tá»« input cÃ³ name="matkhau"
		String matkhau = request.getParameter("matkhau");
		
		
		//Lấy nguoidung
		nguoidungservice.LayNguoiDung();
		
		//tạo session 
		HttpSession session = request.getSession();	
		
		//lấy đăng nhập
		nguoidung nd = nguoidungservice.DangNhap(email);
		
		if(nd == null) {
			session.setAttribute("loi", "Loi dang nhap, sai email");
			response.sendRedirect("login.jsp");
		}else {
			if(nd.getMatkhau().equals(matkhau)) {
				//Tạo ss_login
				session.setAttribute("ss_login", email);			
				//set session
				session.setMaxInactiveInterval(6000);
				session.setAttribute("ss_login", email);
				session.setAttribute("quyen", nd.getQuyen());
				id = nd.getIdnguoidung();
				if(nd.getQuyen().equals("admin")) {					
					response.sendRedirect("index2.jsp");
				}else {
					response.sendRedirect("index.jsp");
				}
			}else {
				session.setAttribute("loi", "Sai pass or chua nhap pass");
				response.sendRedirect("login.jsp");
			}
		}		
		
		
	}

}
