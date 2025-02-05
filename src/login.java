import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/login")
public class login extends HttpServlet {
    String DB_URL = "jdbc:mysql://localhost:3306/authorisedusers";
    String DB_USER = "root";
    String DB_PASSWORD = "Harsh@123";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("userName");
        String pass = req.getParameter("password");


        PrintWriter pw = resp.getWriter();
        resp.setContentType("text/html");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement st = con.createStatement();
            String query = "select * from users where username = '"+name+"';";
            ResultSet rs = st.executeQuery(query);

            if(rs.next()) {
                String dbUser = rs.getString(1);
                String dbPass = rs.getString(2);

                if (pass.equals(dbPass)) {
                    HttpSession hps = req.getSession(true);
                    hps.setAttribute("sessionUserName", name);
                    hps.setAttribute("sessionPass", pass);

                    resp.sendRedirect("home.jsp");
                    return;
                }
            } else {
                pw.println("<h2>User with given name and password does not exist !!!</h2>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static class logout {
    }
}
