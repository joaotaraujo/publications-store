<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" media="screen" type="text/css" href="/TP01_publicacoesUFSJ/css/style.css"   />
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pesquisar publicações</title>
</head>
<body><center>
<a href="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarPesquisasProducoesVisitante.jsp"><h1>Pesquisar publicação</h1></a>
   
	<div id="welcome" style="overflow-y:scroll;height:500px;">
            <table style="width:715px;"><thead><tr><th COLSPAN="4"><h3 style="text-align:left;">Resultado da pesquisa</h3></th>
                         </tr></thead><tbody></tbody></thead>
                </table>
                ${informacoesProducao} 
       
   </div>  
   </center>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong><a href="/TP01_publicacoesUFSJ/ServletLogaVisitante" style="color:#4F4F4F;">Página inicial</a></strong>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong><a href="/TP01_publicacoesUFSJ/ServletLogout" style="color:#4F4F4F;">Logout</a></strong>
</body>
</html>