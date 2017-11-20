<?php
    $conecta = new mysqli("localhost","adminuser","password","dashboardbd");
    $query_select = "SELECT * FROM task_tabela ";
    $tudo = mysqli_query($conecta,$query_select);
    $array = mysqli_fetch_assoc($tudo);
    $numlinhas = mysqli_num_rows($tudo);

?>
<!DOCTYPE html> 
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <title>Dashboard de tasks</title>
    <!-- Bootstrap -->
	<link href="css/bootstrap.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
  </head>
  <body>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-1.11.2.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed --> 
	<script src="js/bootstrap.js"></script>
     <!-- INICIO ---------------------------------------------------------------------------->
   <div class="container-fluid">		<!-- centro01 -->
   <div class="row">					<!-- centro02 -->
   <div class="col-md-12 centro">		<!-- centro03 -->
   
   <!-- CONTEÚDO -->
   <div class="container-fluid">		<!-- conteudo01 -->
   <div class="row conteudo">			<!-- conteudo02 -->
   <h1 id="titulo_dash"> Dashboard de Tasks </h1>
   <br>
   <!-- Conexão: -->

   <!-- A seguir o PHP que vai buscar na tabela todas as linhas e exibir -->

   <?php   
		do {
	    		$task = $array['task'];
    			$descricao = $array['descricao'];
    			$prioridade = $array['prioridade'];
   ?>
   			  <div class="modelo_task">				<!-- quadrotask01 -->
			  <h4 class="nome_task"><b>Task:</b> <?php echo"$task"; ?> </h4>
              <p class="descrição_task text-justify"><b>Descrição:</b> <?php echo"$descricao"; ?> 
              <br><br><b>Prioridade:</b> <?php echo"$prioridade"; ?></p>
              <br> 
              </div>								<!-- fim quadrotask01 -->
   	<?php
		$numlinhas = $numlinhas -1;} while( $array = mysqli_fetch_assoc($tudo));
   ?>
   										
   
   
   <br><br><br><a href="menu.html" class="desconecta"> Clique aqui para voltar ao menu principal </a>
   </div>								<!-- fim conteudo02 -->
   </div>								<!-- fim conteudo01 -->
   <!-- FIM CONTEÚDO -->
   </div>								<!-- fim centro03 -->
   </div>								<!-- fim centro02 -->
   </div>								<!-- fim centro01 -->
   <!-- FIM --------------------------------------------------------------------------------->
  </body>
</html>
