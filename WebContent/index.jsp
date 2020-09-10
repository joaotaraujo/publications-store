<html>
    <head>
        <title>PublicacoesUFSJ</title>
    <link rel='shortcut icon' href="/TO01_publicacoesUFSJ/imagens/brasaoUFSJ.jpg" /> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
    </head>
    <body>
        <center>
            <img src="imagens/brasaoUFSJfull.jpg" width="249" height="202" alt="brasaoUFSJfull"/>

            <form name="formCad" action="ServletLogin" method="POST">
                <table border="0">
                    <thead>
                        <th colspan="2"> Autenticação</th>
                    </thead>
                
                    <tbody>
                        <tr>
                            <td>Login:</td>
                            <td><input type="text" name="login" value="" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Senha:</td>
                            <td><input type="password" name="senha" value="" size="20"/></td>
                        </tr>
                        <tr>
                        	<td>
                        		<a href="ServletLogaVisitante">visitante</a>
                        	</td>
                            <td>
                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            	<input type="submit" value="Entrar" name="Logar" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>${mensagem}</p>
            </form>
        </center>
    </body>
</html>
