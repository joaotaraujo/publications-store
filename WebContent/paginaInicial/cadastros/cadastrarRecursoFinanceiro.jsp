<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" media="screen" type="text/css" href="/TP01_publicacoesUFSJ/css/style.css"   />
    <title>PublicUFSJ</title>
    <link rel='shortcut icon' href="/TP01_publicacoesUFSJ/imagens/brasaoUFSJ.jpg" /> 

</head>
<body>
    <style>
        #welcome {
			background-color: #F5F5F5;
	        width: 715px;
	        height: 500px; 
			border: #000000 solid 4px;
	        padding-left: 0px;
	        padding-top: 0px;
	        padding-bottom: 0px;
	        padding-right: 00px;
	        position:static;
        }
        
    </style>
    
    <%if ((session.getAttribute("login") == null) || (session.getAttribute("login") == "")) {%>
   		You are not logged in<br/>
    	<a href="/TP01_publicacoesUFSJ/index.jsp">Please Login</a>
    <%} else {%> 
    
    <!--HEADER-->
    <div id="header">
        <div id="img" width="100" height="100"></div>
        <a href= "/TP01_publicacoesUFSJ/paginaInicial/PaginaInicial.jsp">
        <div id="logo"> <img src="/TP01_publicacoesUFSJ/imagens/brasaoUFSJ.jpg" width="40" height="40" alt="brasaoImgUFSJ"/><br>UFSJ<br />
        <span id="slogan"> Publicações acadêmicas</span></div>
        </a>
    </div>
    <div class="clear"></div>
    <!-- HEADER END -->
    
    <!-- MENU -->
    <ul id="menu">
        <li id="loggedAs" style="font-size:4.5;">
            <a href="">
            	<b>Login:</b> ${nomeUsuario}<br> 
                <b>Função:</b> ${tipoUsuario}<br>
                <strong><a href="/TP01_publicacoesUFSJ/ServletLogout" style="color:#4F4F4F;">Logout</a></strong>
            </a>
        </li>
        <li class="menu_link"><a href="/TP01_publicacoesUFSJ/ServletCarregaUsuarios">Usuarios</a></li>
         <li class="menu_link"><a href="/TP01_publicacoesUFSJ/ServletCarregaPublicacoes">Publicações</a></li>
        <li class="menu_link"><a href="/TP01_publicacoesUFSJ/ServletCarregaDepartamentos">Departamentos</a></li>
        <li class="menu_link"><a href="/TP01_publicacoesUFSJ/ServletCarregaAreas">Areas CNPQ</a></li>
        <li class="menu_link"><a href="/TP01_publicacoesUFSJ/ServletCarregaRecursosFinanceiros">Recursos Financeiros</a></li>
        <li class="menu_link"><a href="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarRelatorios.jsp">Relatórios</a></li>
    </ul>
    <div class="clear"></div>
    <!-- MENU END -->
    
    <!-- CONTENT -->
    <div id="content">
        <div id="left">
        	<br>
                <a href="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarPesquisasProducoes.jsp"><h1>Pesquisar publicação</h1></a>
                <%if (session.getAttribute("tipoUsuario").equals("Administrador") || session.getAttribute("tipoUsuario").equals("Pro-reitor de pesquisa")) {%>
				    <a href="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarRelatorios.jsp"><h1>Gerar relatório</h1></a>
				<%}%>
                <a href=""><h1>Consultar</h1></a>
                	<a href="/TP01_publicacoesUFSJ/ServletCarregaAreas" class="link">Áreas CNPQ</a>
                	<a href="/TP01_publicacoesUFSJ/ServletCarregaDepartamentos" class="link">Departamentos</a>
	                <a href="/TP01_publicacoesUFSJ/ServletCarregaPublicacoes" class="link">Publicações</a>
	                <a href="/TP01_publicacoesUFSJ/ServletCarregaRecursosFinanceiros" class="link">Recursos Financeiros</a>
                	<a href="/TP01_publicacoesUFSJ/ServletCarregaUsuarios" class="link">Usuarios</a>
                
           
        </div>
      
        <div id="right">
            <div id="welcome" style="overflow-y:scroll; height:350px;">
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletCadastraRecursoFinanceiro" id="demoForm" class="demoForm">
            
                        <table border="1" width="30%" cellpadding="2">
                            <thead>
                                <tr>
                                    <th colspan="2"><h3>Cadastrar recurso financeiro</h3></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width:20%;">Código</td>
                                    <td style="width:80%;"><input size="75" type="text" name="codigo" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Fundação Financiadora</td>
                                    <td style="width:80%;"><input size="75" type="text" name="fundacaoFinanciadora" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Programa Vinculado</td>
                                    <td style="width:80%;">
                                    	<select name="programaVinculado" id="programaVinculado">
                                    		<option value="Graduacao">Graduação</option>
                                    		<option value="Mestrado">Mestrado</option>
                                    		<option value="Doutorado">Doutorado</option>
										</select> 
									</td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Valor</td>
                                    <td style="width:80%;"><input size="75" type="text" name="valor" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Duracao</td>
                                    <td style="width:80%;"><input size="75" type="text" name="duracao" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Grande Área</td>
                                    <td style="width:80%;">
										<select name="codGrandeArea" id="codGrandeArea">
											<option value="1.00.00.00-0">Ciências Exatas e da Terra</option>
											<option value="3.00.00.00-9">Engenharias</option>
										</select> 
									</td>
                                </tr>
                                <td><button type="submit" name="Submit" value="Cadastrar recurso financeiro">Cadastrar</button></td>  
                                <td><button type="reset">Resetar</button></td>
                            </tbody>
                        </table>
                    </form>
                    
                    <br>
                    
                    <form method="post" action="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarRecursosFinanceiros.jsp">
                    <button type="submit" name="Submit" value="voltar">Voltar</button></form>
            </div>
        
        </div>
       	<div class="clear"></div>
        <!-- CONTENT END -->    
        
  <!-- FOOTER -->
        <div id="footer"> https://ufsj.edu.br/ccomp/ &copy; 2018 <a href="#" > Privaty Policy</a> | <a href="#"> Terms of use</a>
            <br><a href="#" >Contato: teixeira.araujo@gmail.com</a>
        </div>
  <!-- FOOTER END -->
</div>
<%
    }
%>
</body>
</html>

       