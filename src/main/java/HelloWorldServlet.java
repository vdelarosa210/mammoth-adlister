import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/Hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter output = response.getWriter();

        String name = request.getParameter("name");
        if (name == null){
            output.println("<h1>Hello, World!</h1>");
        } else {
            output.printf("<h1>Hello, %s</h1>", name);
        }
    }
}
