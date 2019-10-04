<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="style/Site.css" rel="stylesheet" type="text/css" />
	<link href="style/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="scripts/modernizr-2.6.2.js"></script>
    <script src="scripts/jquery-1.10.2.js"></script>
    <script src="scripts/site.js"></script>
	<meta charset="UTF-8">
	<title>CRM Java</title>
</head>
<body class="p-0">
	<%@include file='Menu.jsp' %>
	
	<div class="container body-content">
		<div class="accordion">
		    <div class="card mt-4">
		        <div class="card-header bg-primary text-white">
		            <span class="collapsed" data-toggle="collapse" data-target="#cadastroCliente" aria-expanded="false" aria-controls="cadastroCliente" >Cadastro de Cliente</span>
		        </div>
		
		        <div class="card-body" id="cadastroCliente">
		        	<form method="POST" action="Cliente">
		                <div class="form-row p-2">
		                    <div class="form-group col-md-12">
		                        <label for="Nome">Nome do cliente</label>
		                        <input type="text" name="Nome" id="Nome" class="form-control mw-100" placeholder="Nome do cliente" />
		                    </div>
		                </div>
		                <div class="form-row p-2">
		                    <div class="form-group col-md-2">
		                        <label for="Documento">Número do documento</label>
		                        <input type="text" name="Documento" id="Documento" class="form-control mw-100" placeholder="Documento" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="DataNascimento">Data de nascimento</label>
		                        <input type="date" name="DataNascimento" id="DataNascimento" class="form-control mw-100" placeholder="Nascimento" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="Telefone">Telefone</label>
		                        <input type="text" class="form-control" id="txtTelefone" name="txtTelefone" maxlength="11" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <input type="button" class="btn btn-primary align-bottom" value="Adicionar" onclick="adicionarTelefone()" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <select class="form-control mw-100 align-bottom" id="Telefones" name="Telefones">
		                        </select>
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="Genero">Gênero</label>
		                        <select class="form-control w-auto" id="Genero" name="Genero">
		                            <option id="M" value="M">M</option>
		                            <option id="F" value="F">F</option>
		                        </select>
		                    </div>
		                </div>
		                <div class="form-row p-2">
		                    <div class="form-group col-md-6">
		                        <button type="reset" class="btn btn-warning w-100">Limpar Campos</button>
		                    </div>
		                    <div class="form-group col-md-6">
		                        <button type="submit" class="btn btn-primary w-100" name="cmd" value="GravarCliente">Gravar Cliente</button>
		                    </div>
		                </div>
		            </form>
		        </div>
		    </div>
		</div>
	
		<div class="accordion">
		    <div class="card mt-4">
		        <div class="card-header bg-primary text-white">
		            <span class="collapsed" data-toggle="collapse" data-target="#cadastroEndereco" aria-expanded="false" aria-controls="cadastroEndereco">Cadastro de Endereço</span>
		        </div>
		        <div class="card-body" id="cadastroEndereco">
		        	<form method="POST" action="cliente">
		                <div class="form-row p-2">
		                    <div class="form-group col-md-2">
		                        <label for="CEP">CEP</label>
		                        <input type="text" name="CEP" id="CEP" class="form-control mw-100" />
		                    </div>
		                    <div class="form-group col-md-6">
		                        <label for="Logradouro">Logradouro</label>
		                        <input type="text" name="Logradouro" id="Logradouro" class="form-control mw-100" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="Numero">Número</label>
		                        <input type="text" name="Numero" id="Numero" class="form-control mw-100" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="Complemento">Complemento</label>
		                        <input type="text" name="Complemento" id="Complemento" class="form-control mw-100" />
		                    </div>
		                </div>
		                <div class="form-row p-2">
		                    <div class="form-group col-md-6">
		                        <label for="Bairro">Bairro</label>
		                        <input type="text" name="Bairro" id="Bairro" class="form-control mw-100" />
		                    </div>
		                    <div class="form-group col-md-4">
		                        <label for="Cidade">Cidade</label>
		                        <input type="text" name="Cidade" id="Cidade" class="form-control mw-100" />
		                    </div>
		                    <div class="form-group col-md-2">
		                        <label for="UF">UF</label>
		                        <input type="text" name="UF" id="UF" class="form-control mw-100" />
		                    </div>
		                </div>
		                <div class="form-row p-2">
		                    <div class="form-group col-md-6">
		                        <button type="reset" class="btn btn-warning w-100">Limpar Campos</button>
		                    </div>
		                    <div class="form-group col-md-6">
		                        <button type="submit" class="btn btn-primary w-100" name="cmd" value="GravarEndereco">Gravar Endereço</button>
		                    </div>
		                </div>
		            </form>
		        </div>
		    </div>
		</div>
	</div>
	
	<script src="scripts/cliente.js"></script>
</body>
</html>