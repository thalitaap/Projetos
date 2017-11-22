<?php
	$conecta = new mysqli("localhost","adminuser","password","dashboardbd");
	$ID_arq = $_GET['nome'];
    $query = "SELECT arquivo_tipo FROM task_tabela WHERE ID = $ID_arq";
    $resultado = mysqli_query($conecta,$query) or die(mysqli_error($conecta));
    $tudo = mysqli_fetch_array($resultado);
	$tipo = $tudo['arquivo_tipo'];

  //Seleciona arquivo, transforma em objeto para exibir e exibe:
   
  $seleciona = "SELECT arquivos FROM task_tabela WHERE ID = $ID_arq";
  $resultado = mysqli_query($conecta,$seleciona);
  $visualiza = mysqli_fetch_object($resultado);
  $arquivo = $visualiza->arquivos;
  header( "Content-Type: $tipo");
  echo $arquivo; 
?>