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
        double result1 = listPrice * discountPercent * 0.01;
        double result2 = listPrice - discountAmount ;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("DiscountServlet.jsp");
        request.setAttribute("result1",productDescription);
        request.setAttribute("result2",listPrice);
        request.setAttribute("result3",discountPercent);
        request.setAttribute("result4",discountAmount);
        request.setAttribute("result5",result1);
        request.setAttribute("result6",result2);
        requestDispatcher.forward(request,response);
    }
}
