import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "index", value = "/task1")
public class task1Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("Product Description");
        int listPrice = Integer.parseInt(request.getParameter("List Price"));
        int discountPercent = Integer.parseInt(request.getParameter("Discount Percent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double productAfterDiscount = listPrice - discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("productDiscountServlet.jsp");
        request.setAttribute("displayProductDescription", productDescription);
        request.setAttribute("displayListPrice", listPrice);
        request.setAttribute("displayDiscountPercent", discountPercent);
        request.setAttribute("displayDiscountAmount", discountAmount);
        request.setAttribute("displayProductAfterDiscount", productAfterDiscount);
        requestDispatcher.forward(request, response);
    }
}
