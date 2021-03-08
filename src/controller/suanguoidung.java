package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.NdbLoadBalanceExceptionChecker;

import model.nguoidung;
import services.nguoidungservice;

/**
 * Servlet implementation class suanguoidung
 */
@WebServlet("/suanguoidung")
public class suanguoidung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suanguoidung() {
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
		
		String id = request.getParameter("idnguoidung");
		String hoten = request.getParameter("hoten");
		String email = request.getParameter("email");
		String matkhau = request.getParameter("pass");
		String quyen = request.getParameter("quyen");
		
		System.out.println(id);
		System.out.println(hoten);
		System.out.println(email);
		System.out.println(matkhau);
		System.out.println(quyen);
		
		nguoidung nd = nguoidungservice.LayNguoiDungTheoID(id);
		
		nd.setHoten(hoten);
		nd.setMatkhau(matkhau);
		nd.setQuyen(quyen);
		
		nguoidungservice.Sua(nd);
		response.sendRedirect(request.getContextPath() + "/index2.jsp");
	}

}
