<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" media="screen" type="text/css" href="/TP01_publicacoesUFSJ/css/style.css"   />
    <title>PublicUFSJ</title>
    <link rel='shortcut icon' href="/TP01_publicacoesUFSJ/imagens/brasaoUFSJ.jpg" /> 
</head>
<body>
    
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
            <div id="welcome">
                <table style="width:725px;">
                    <thead>
                        <tr>
                            <th colspan="6"><h3 style="text-align:left;">Sistema de gerenciamento de produções acadêmicas</right></h3></th>
                        </tr>
                    </thead>
                </table>
                <div style="padding-left:2px;">
                    <br><font style="font-size:100%;">
                    	&nbsp;&nbsp;&nbsp;Este sistema foi desenvolvido para o TP01 de banco de dados, destinado ao
                    	armaze- namento de produções científicas na Universidade Federal de São João Del Rei (UFSJ).
                    	O sistema possui 4 possíveis tipos de usuários: o administrador, que possui permissão
                    	para gerenciar tudo o que está presente no sistema, podendo excluir, editar e cadastrar
                    	novos usuários, recursos financeiros, departamentos e produções cientí- ficas; o pró-reitor 
                    	de pesquisa, que pode editar uma produção científica e gerenciar os recursos financeiros
                    	destinados a cada área do CNPQ; o pesquisador que pode gerenci- ar todas as suas produções e o
                    	visitante que pode apenas realizar consultas sob as pu- blicações. 
               </font> <div class="clear"></div>
               </div>
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

