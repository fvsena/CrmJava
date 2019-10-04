package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Usuario;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Usuario usuario;
	
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("Login");
		String senha = request.getParameter("Senha");
		usuario = new Usuario(login, senha);
		if (usuario.validarLogin()) {
			request.getSession().setAttribute("usuario", usuario);
			request.getRequestDispatcher("Cliente").forward(request, response);
		}
		else
		{
			response.getOutputStream().write("<script>alert('Usuário e/ou senha incorretos!');</script>".getBytes());
			response.sendRedirect("Login.jsp");
		}
	}

}
