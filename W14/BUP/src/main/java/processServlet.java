

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class processServlet
 */
@WebServlet("/process")
public class processServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public processServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//name,email,number
		
		String nameString = request.getParameter("fullname");
		String emailString = request.getParameter("email");
		Double donationAmount = Double.parseDouble(request.getParameter("DonationAmount"));
		
		response.setContentType("text/html");
		response.setHeader("Accept-Language", "fr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Thank you for your support!</h1>");
		
		
		String personalizedThankString ="";
		if(donationAmount<50) {
			personalizedThankString = "tq";
		} else if(donationAmount<500) {
			personalizedThankString = "tq, murah rezeki";
		} else {
			personalizedThankString = "tq, Thumbs up!!!";
		}
		out.println(nameString + " " + emailString + " " + personalizedThankString);
		out.println("</body>");
		out.println("</html>");
		//duplicate
	}

}
