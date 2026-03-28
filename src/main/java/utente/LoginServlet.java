package utente;

import java.sql.SQLException;
import java.io.Console;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			UsersDaoDataSource d = new UsersDaoDataSource();
			User u = new User();
		
			String email = request.getParameter("email");
			String password = request.getParameter("pwd");
			
			List<String> errors = new ArrayList<>();

			// Validazione input
			if(email == null || email.trim().isEmpty()) {
				errors.add("Il campo username non può essere vuoto!");
			}
            if(password == null || password.trim().isEmpty()) {
            	errors.add("Il campo password non può essere vuoto!");
			}
            if (!errors.isEmpty()) {
            	request.setAttribute("errors", errors);
            	response.sendRedirect("login.jsp");
            }
            else{
            email = email.trim();
        
            password = (Encrypter.hashPassword(password).trim()); 
           
           
            try {
                u = d.doRetrieveByEmail(email);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            // Controllo credenziali
            if (u != null && u.getPassword().equals(password)) {
                request.getSession().setAttribute("user", u);

                response.sendRedirect("index.jsp");
            } else {
                errors.add("email o password errate");
                request.setAttribute("errors", errors);
                response.sendRedirect("login.jsp");
                //request.getRequestDispatcher("login.jsp").forward(request, response);
                //return;
            }
        }
    }
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request,response);
	}	
}