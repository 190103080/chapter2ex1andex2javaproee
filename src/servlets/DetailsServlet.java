package servlets;


import db.DBManager;
import db.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Long id = Long.parseLong(request.getParameter("id"));
        Item item = DBManager.getItem(id);

        request.setAttribute("tovarlar", item);
        request.getRequestDispatcher("/details.jsp").forward(request, response);

    }

}
