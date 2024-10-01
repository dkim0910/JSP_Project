package test;

import java.io.IOException;

import ProductAction.ProductAction;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.my")
public class FrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
		case "/my/mypage.my":
			forward = new ProductAction().execute(req, resp);
			break;
		}
		
			if(forward != null) {
		         if(forward.isRedirect()) {
		            resp.sendRedirect(forward.getPath());
		         }else {
		            RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
		            disp.forward(req, resp);
		         }
		      }
			
		
		
		
	}
}

