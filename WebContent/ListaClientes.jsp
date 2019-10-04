<%@page import="java.util.List"%>
<%@page import="javax.websocket.Session"%>
<%@page import="models.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="style/Site.css" rel="stylesheet" type="text/css" />
	<link href="style/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<title>CRM Java</title>
</head>
<body>
	<%@include file='Menu.jsp' %>
	<div class="container body-content">
		<div class="card">
		    <div class="card-body">
		        <a href="CadastrarCliente.jsp" class="btn btn-primary">Cadastrar Cliente</a>
		    </div>
		</div>
		
		<table id="ListaClientes" name="ListaClientes" class="table mt-4">
		    <thead class="thead-dark">
		        <th scope="col">Código</th>
		        <th scope="col">Nome</th>
		        <th scope="col">Documento</th>
		        <th scope="col">Data de Nascimento</th>
		        <th scope="col">Gênero</th>
		        <th scope="col">Ação</th>
		    </thead>
		    <tbody>
		    	<% for(Cliente cliente : (List<Cliente>)session.getAttribute("clientes")) {%>
		            <tr>
		                <td><%=cliente.codigo %></td>
		                <td><%=cliente.nome %></td>
		                <td><%=cliente.documento %></td>
		                <td><%=cliente.dataNascimento.toString()%></td>
		                <td><%=cliente.genero %></td>
		                <td><a href="SelecionarCliente?codigo=<%=cliente.codigo %>&nome=<%=cliente.nome %>" class="btn btn-primary">Selecionar</a>
		            </tr>
				<% } %>
		    </tbody>
		</table>
	</div>
	<script src="scripts/cliente.js"></script>
</body>
</html>