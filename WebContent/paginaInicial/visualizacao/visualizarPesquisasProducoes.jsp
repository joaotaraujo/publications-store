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
            <div id="welcome" style="overflow-y:scroll;height:350px;">
            		<table border="1" width="30%" cellpadding="2">
                            <thead>
                                <tr>
                                    <th colspan="2"><h3>Pesquisar publicações por</h3></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                    </table>
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=titulo&tipoTela=usuario" id="demoForm" class="demoForm">
                        <table border="1" width="30%" cellpadding="2">
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <td style="width:20%;">Titulo</td>
                                    <td style="width:80%;"><input size="75" type="text" name="titulo" value="" /></td>
                                </tr>
                                </tbody>
                       </table> <button type="submit" name="Submit" value="Pesquisa producao">Pesquisar</button>
                      
                            
                    </form>
                    <br>
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=tipo&tipoTela=usuario" id="demoForm" class="demoForm">
                        <table border="1" width="30%" cellpadding="2">
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <td style="width:20%;">Tipo</td>
                                    <td style="width:80%;">
                                    	<select name="tipo"" id="tipo">
                                    		<option value="1">Tese</option>
                                    		<option value="2">Dissertacao</option>
                                    		<option value="3">Trabalho Científico</option>
										</select> 
									</td>
                                </tr>
                                </tbody>
                              </table>  <button type="submit" name="Submit" value="Pesquisa producao">Pesquisar</button>
                         
                    </form>
                    <br>
                    
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=especialidade&tipoTela=usuario" id="demoForm" class="demoForm">
                        <table border="1" width="30%" cellpadding="2">
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <td style="width:20%;">Especialidade</td>
                                    <td style="width:80%;">
                                    	<select name="codEspecialidade" id="codEspecialidade">
                                    		<option value="1.01.01.01-2">Conjuntos</option>
                                    		<option value="1.01.01.02-0">Logica Matematica</option>
                                    		<option value="1.01.01.03-9">Teoria</option>
                                    		<option value="1.01.02.01-9">Analise Complexa</option>
                                    		<option value="1.01.02.02-7">Analise Funcional</option>
                                    		<option value="1.01.03.01-5">Geometria Diferencial</option>
                                    		<option value="1.01.03.02-3">Topologia Algebrica</option>
                                    		<option value="1.03.02.01-8">Matematica Simbolica</option>
                                    		<option value="1.03.02.02-6">Modelos Analiticos</option>
                                    		<option value="1.03.04.01-0">Hardware</option>
                                    		<option value="1.03.04.04-5">Teleinformatica</option>
                                    		<option value="3.01.01.02-6">Processos Construtivos</option>
                                    		<option value="3.01.01.03-4">Instalacoes Prediais</option>
                                    		<option value="3.01.02.01-4">Estruturas de Concreto</option>
                                    		<option value="3.01.02.02-2">Estruturas de Madeira</option>
                                    		<option value="3.03.02.01-3">Aglomeração</option>
                                    		<option value="3.03.02.03-0">Hidrometalurgia</option>
                                    		<option value="3.03.04.04-0">Transformacao de Fases</option>
                                    		<option value="3.03.04.05-9">Corrosao</option>
										</select> 
									</td>
                                </tr>
                              </tbody>
                        </table>   <button type="submit" name="Submit" value="Pesquisa producao">Pesquisar</button>
                           
                    </form>
                    
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

       