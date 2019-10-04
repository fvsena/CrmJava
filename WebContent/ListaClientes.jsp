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
	        @foreach (Crm.Models.Cliente cliente in Model)
	        {
	            <tr>
	                <td>@cliente.Codigo</td>
	                <td>@cliente.Nome</td>
	                <td>@cliente.Documento</td>
	                <td>@cliente.DataNascimento</td>
	                <td>@cliente.Genero</td>
	                <td>@Html.ActionLink("Selecionar", "SelecionaCliente", "Cliente", new { cliente.Codigo, cliente.Nome }, new { @class = "btn btn-primary" })</td>
	            </tr>
	        }
	    </tbody>
	</table>
	<script src="scripts/cliente.js"></script>
</body>
</html>