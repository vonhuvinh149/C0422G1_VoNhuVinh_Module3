import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "exerciseServlet", value = "/exerciseServlet")
public class exerciseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String display = "HELLO";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("displayExercise.jsp");
        if (userName.equals("admin") && password.equals("admin")) {
            request.setAttribute("display", display);
        }
        requestDispatcher.forward(request, response);
    }
}
