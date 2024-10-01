package ProductAction;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import test.Action;
import test.ActionForward;
import test.MyDTO;
import test.MyDAO;

public class ProductAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        ActionForward forward = new ActionForward();
    	
    	MyDAO productDAO = new MyDAO();
        List<MyDTO> products = productDAO.getAllProducts();
        request.setAttribute("products", products);
        
        forward.setRedirect(false);
        forward.setPath("/productList.jsp");
        
        return forward; // 포워딩
    }
}
