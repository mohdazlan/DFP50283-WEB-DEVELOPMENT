

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class DonateServlet
 */
@WebServlet("/donate")
public class DonateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DonateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter outPrintWriter = response.getWriter();
		outPrintWriter.println("<html>");
		outPrintWriter.println("<head>");
		outPrintWriter.println("</head>");
		outPrintWriter.println("<body>");
		outPrintWriter.println("<h1>Donation Form</h1>");
		outPrintWriter.println("<form action='process' method='POST'>");
		outPrintWriter.println("Name: <input type='text' name='fullname' required> <br>");
		outPrintWriter.println("E-Mail: <input  type='email' name='E-Mail' required> <br>");
		outPrintWriter.println("Donation Amount: <input  type='number' name='Donation Amount' required> <br>");
		outPrintWriter.println("<input  type='submit' value='Donate'>");
		outPrintWriter.println("</form>");
		outPrintWriter.println("</body>");
		outPrintWriter.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
