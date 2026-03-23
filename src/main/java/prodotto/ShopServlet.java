package prodotto;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Shop")
public class ShopServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Metodo post
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filtro = request.getParameter("filter");
        if (filtro == null) filtro = "";

        String azione = request.getParameter("action");
        if (azione == null) azione = "ricerca";

        ArrayList<ProductBean> prodotti = new ArrayList<>();
        ProductDaoDataSource source = new ProductDaoDataSource();

        try {
            if ("categoria".equalsIgnoreCase(azione)) {
                if (filtro.equalsIgnoreCase("Tutto") || filtro.isEmpty()) {
                    // Mostra tutti i prodotti
                    prodotti = source.doRetrieveAvailable();
                } else {
                    // Mostra solo i prodotti della categoria specifica
                    prodotti = source.doRetrieveByCategory(filtro);
                }
            // Ricerca per nome
            } else if ("ricerca".equalsIgnoreCase(azione)) {
                if (!filtro.isEmpty()) {
                    prodotti = source.doRetrieveByName(filtro);
                } else {
                    prodotti = source.doRetrieveAvailable();
                }
            } else {
            	// Default
                prodotti = source.doRetrieveAvailable();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Passa i prodotti alla JSP 
        request.setAttribute("products1", prodotti);
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/shop.jsp");
        dispatcher.forward(request, response);
    }

    // Metodo get
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}