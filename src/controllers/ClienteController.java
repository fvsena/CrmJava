package controllers;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Cliente;

@WebServlet("/Cliente")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Cliente cliente = new Cliente();
    public ClienteController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.getSession().setAttribute("clientes", cliente.obterClientes());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("ListaClientes.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		response.getWriter().append("CMD: "+cmd+" | Served at: ").append(request.getContextPath());
		/*HttpSession session = request.getSession();
		try {
			session.setAttribute("clientes", cliente.obterClientes());
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
		doGet(request, response);
	}
	
	private void gravarCliente(HttpServletRequest request, HttpServletResponse response) {
		Cliente c = new Cliente();
		
	}

}
