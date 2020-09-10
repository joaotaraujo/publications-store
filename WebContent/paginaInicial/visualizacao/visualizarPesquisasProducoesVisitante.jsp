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
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=titulo&tipoTela=visitante" id="demoForm" class="demoForm">
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
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=tipo&tipoTela=visitante" id="demoForm" class="demoForm">
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
                    
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletPesquisaPublicacao?pesquisaPor=especialidade&tipoTela=visitante" id="demoForm" class="demoForm">
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
   </center>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong><a href="/TP01_publicacoesUFSJ/ServletLogaVisitante" style="color:#4F4F4F;">Página inicial</a></strong>
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<strong><a href="/TP01_publicacoesUFSJ/ServletLogout" style="color:#4F4F4F;">Logout</a></strong>
</body>
</html>