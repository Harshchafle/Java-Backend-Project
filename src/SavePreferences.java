import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/savePreferences")
public class SavePreferences extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String lang = req.getParameter("language");
        String theme = req.getParameter("theme");
        String notif = req.getParameter("notificationSetting");

        HttpSession pref = req.getSession();
        if(lang != null){
            pref.setAttribute("sessionLanguage", lang);
        }
        if(theme != null){
            pref.setAttribute("sessionTheme", theme);
        }
        if(notif != null){
            pref.setAttribute("sessionNotif", notif);
        }
        System.out.println(pref.getAttribute("sessionTheme"));
        resp.sendRedirect("home.jsp");

    }
}
