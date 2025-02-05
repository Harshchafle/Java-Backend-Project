import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/logout")
public class logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter pw = resp.getWriter();
        HttpSession logoutSession = req.getSession(false);

        String sessionUserName = (String) logoutSession.getAttribute("sessionUserName");
        resp.setContentType("text/html");
        pw.println("<h2>"+sessionUserName+" Logged Out !!!</h2>");
        logoutSession.invalidate();
        resp.sendRedirect("login.html");

    }
}
