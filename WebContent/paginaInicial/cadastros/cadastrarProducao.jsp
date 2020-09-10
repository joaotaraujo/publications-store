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
            <div id="welcome" style="overflow-y:scroll;">
                    <form method="post" action="/TP01_publicacoesUFSJ/ServletCadastraProducao" id="demoForm" class="demoForm">
            
                        <table border="1" width="30%" cellpadding="2">
                            <thead>
                                <tr>
                                    <th colspan="2"><h3>Cadastrar produção</h3></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width:20%;">Título</td>
                                    <td style="width:80%;"><input size="75" type="text" name="titulo" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Páginas</td>
                                    <td style="width:80%;"><input size="75" type="text" name="numPaginas" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Ano publicado</td>
                                    <td style="width:80%;"><input size="75" type="text" name="anoPublicado" value="" /></td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Tipo</td>
                                    <td style="width:80%;">
                                    	<select name="tipo" id="tipo">
                                    		<option value="Tese">Tese</option>
                                    		<option value="Dissertacao">Dissertação</option>
                                    		<option value="TrabalhoCientifico">Trabalho Científico</option>
										</select> 
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Grande Área</td>
                                    <td style="width:80%;">
										<select name="grandeArea" id="grandeArea">
											<option value="cienciasExatasDaTerra">Ciências Exatas e da Terra</option>
											<option value="engenharias">Engenharias</option>
										</select> 
									</td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Área</td>
                                    <td style="width:80%;">
                                    	<select name="area" id="area">
										</select> 
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Sub-área</td>
                                    <td style="width:80%;">
                                    	<select name="subArea" id="subArea">
										</select> 
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Especialidade</td>
                                    <td style="width:80%;">
                                    	<select name="especialidade" id="especialidade">
										</select> 
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:20%;">Autores</td>
                                    <td style="width:80%;"><input size="75" type="text" name="autores" value="" /></td>
                                </tr>
                                <td><button type="submit" name="Submit" value="Cadastrar publicação">Cadastrar</button></td>  
                                <td><button type="reset">Resetar</button></td>
                            </tbody>
                        </table>
                        <br><br>
                        <div id="welcome" style="height: 250px;overflow-y:scroll;">
                        ${usuariosTabela}
                        </div>
                    </form>
                    
                    <br>
                    
                    <form method="post" action="/TP01_publicacoesUFSJ/paginaInicial/visualizacao/visualizarProducoes.jsp">
                    <button type="submit" name="Submit" value="voltar">Voltar</button></form>
            </div>
        
        </div>
       	<div class="clear"></div>
        <!-- CONTENT END -->
  <script>
   		var Select_List_Data = {
   		    'area': { 
   		        engenharias: {
   		            text: ['Engenharia Civil', 'Engenharia de Minas'],
   		            value: ['EngenhariaCivil', 'EngenhariadeMinas']
   		        },
   		     	cienciasExatasDaTerra:{
   		            text: ['Matemática', 'Ciência da Computação'],
   		            value: ['Matemática', 'CiênciadaComputação']
   		        }
   		    }
   		};
   		var Select_List_Data2 = {   
   			'subArea': {
   				Matemática: {
		            text: ['Álgebra', 'Análise', 'Geometria e topologia'],
		            value: ['Álgebra', 'Análise', 'Geometriaetopologia']
		        },
		        CiênciadaComputação: {
		            text: ['Matemática da Computação', 'Sistemas de Computação'],
		            value: ['MatemáticadaComputação', 'SistemasdeComputação']
		        },
		        EngenhariaCivil:{
		            text: ['Construção Civil', 'Estruturas'],
		            value: ['ConstruçãoCivil', 'Estruturas']
		        },
		        EngenhariadeMinas:{
		            text: ['Metalurgia Extrativa', 'Metalurgia Fisica'],
		            value: ['MetalurgiaExtrativa', 'MetalurgiaFisica']
		        }
		    }
   		};
   		var Select_List_Data3 = {
   		 	'especialidade': { 
   		 		Álgebra: {
		            text: ['Conjuntos', 'Logica Matemática', 'Teoria dos numeros'],
		            value: ['Conjuntos', 'Logica Matematica', 'Teoria dos numeros']
		        },
		        Análise: {
		            text: ['Analise Complexa', 'Analise Funcional'],
		            value: ['Analise Complexa', 'Análise Funcional']
		        },
		        Geometriaetopologia: {
		            text: ['Geometria Diferencial', 'Topologia Algebrica'],
		            value: ['Geometria Diferencial', 'Topologia Algebrica']
		        },
		        MatemáticadaComputação: {
		            text: ['Matematica Simbolica', 'Modelos Analiticos'],
		            value: ['Matematica Simbolica', 'Modelos Analiticos']
		        },
		        SistemasdeComputação: {
		            text: ['Hardware', 'Teleinformatica'],
		            value: ['Hardware', 'Teleinformatica']
		        },
		        ConstruçãoCivil: {
		            text: ['Processos Construtivos', 'Instalacoes Prediais'],
		            value: ['Processos Construtivos', 'Instalacoes Prediais']
		        },
		        Estruturas: {
		            text: ['Estruturas de Concreto', 'Estruturas de Madeira'],
		            value: ['Estruturas de Concreto', 'Estruturas de Madeira']
		        },
		        MetalurgiaExtrativa: {
		            text: ['Hidrometalurgia', 'Metalurgia Fisica'],
		            value: ['Hidrometalurgia', 'Metalurgia Fisica']
		        },
		        MetalurgiaFisica: {
		            text: ['Corrosao', 'Transformacao de Fases'],
		            value: ['Corrosão', 'Transformação de Fases']
		        }
		    }   
   		};

   		function removeAllOptions(sel, removeGrp) {
   		    var len, groups, par;
   		    if (removeGrp) {
   		        groups = sel.getElementsByTagName('optgroup');
   		        len = groups.length;
   		        for (var i=len; i; i--) {
   		            sel.removeChild( groups[i-1] );
   		        }
   		    }
   		    
   		    len = sel.options.length;
   		    for (var i=len; i; i--) {
   		        par = sel.options[i-1].parentNode;
   		        par.removeChild( sel.options[i-1] );
   		    }
   		}
   		function appendDataToSelect(sel, obj) {
   		    var f = document.createDocumentFragment();
   		    var labels = [], group, opts;
   		    
   		    function addOptions(obj) {
   		        var f = document.createDocumentFragment();
   		        var o;
   		        
   		        for (var i=0, len=obj.text.length; i<len; i++) {
   		            o = document.createElement('option');
   		            o.setAttribute("value",obj.text[i]);
   		            o.appendChild( document.createTextNode( obj.text[i] ) );
   		            
   		            if ( obj.value ) {
   		                o.value = obj.value[i];
   		            }
   		            
   		            f.appendChild(o);
   		        }
   		        return f;
   		    }
   		    
   		    if ( obj.text ) {
   		        opts = addOptions(obj);
   		        f.appendChild(opts);
   		    } else {
   		        for ( var prop in obj ) {
   		            if ( obj.hasOwnProperty(prop) ) {
   		                labels.push(prop);
   		            }
   		        }
   		        
   		        for (var i=0, len=labels.length; i<len; i++) {
   		            group = document.createElement('optgroup');
   		            group.label = labels[i];
   		            f.appendChild(group);
   		            opts = addOptions(obj[ labels[i] ] );
   		            group.appendChild(opts);
   		        }
   		    }
   		    sel.appendChild(f);
   		}

   		document.forms['demoForm'].elements['grandeArea'].onchange = function(e) {
   		    var relName = 'area';
   		    var relList = this.form.elements[ relName ];
   		    var obj = Select_List_Data[ relName ][ this.value ];
   		    removeAllOptions(relList, true);
   		    appendDataToSelect(relList, obj);
   		};
   		
   		document.forms['demoForm'].elements['area'].onchange = function(e) {
   		    var relName = 'subArea';
   		    var relList = this.form.elements[ relName ];
   		    var obj = Select_List_Data2[ relName ][ this.value ];
   		    removeAllOptions(relList, true);
   		    appendDataToSelect(relList, obj);
   		};
   		
   		document.forms['demoForm'].elements['subArea'].onchange = function(e) {
   		    var relName = 'especialidade';
   		    var relList = this.form.elements[ relName ];
   		    var obj = Select_List_Data3[ relName ][ this.value ];
   		    removeAllOptions(relList, true);
   		    appendDataToSelect(relList, obj);
   		};
   		
	</script>      
        
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

       