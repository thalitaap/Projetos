<?php
$task = $_POST['task'];
$descricao = $_POST['descricao'];
$prioridade = $_POST['prioridade'];
$arquivo_tmp = $_FILES['arquivo']['tmp_name'];
$arquivo_tam = $_FILES['arquivo']['size'];
$arquivo_tipo = $_FILES['arquivo']['type'];
$arquivo_nome = $_FILES['arquivo']['name'];
$usuario = $_POST['usuario'];

$connect = new mysqli("localhost","adminuser","password","dashboardbd");

$query_select = "SELECT task FROM task_tabela WHERE task = '$task'";

$select = mysqli_query($connect,$query_select);

$array = mysqli_fetch_array($select);

$taskarray = $array['task'];

if($task == "" || $task == null){
    echo"<script language='javascript' type='text/javascript'>alert('O nome da task é campo obrigatório');window.location.href='cria_task.html';</script>";

    }else{
      if($taskarray == $task){

        echo"<script language='javascript' type='text/javascript'>alert('Esse nome de task já existe');window.location.href='cria_task.html';</script>";
        die();

      }else{
		// Arquivo:
		$fp = fopen($arquivo_tmp, "r");
        $conteudo = fread($fp, $arquivo_tam);
        $conteudo = addslashes($conteudo);
        fclose($fp);
		//Inserção:
        $query = "INSERT INTO task_tabela (task,descricao, prioridade, arquivos, arquivo_nome, arquivo_tipo, usuario_criou) VALUES ('$task','$descricao','$prioridade', '$conteudo', '$arquivo_nome', '$arquivo_tipo', '$usuario')";
        $insert = mysqli_query($connect,$query);

        if($insert){
          echo"<script language='javascript' type='text/javascript'>alert('Sua task foi incluída!');window.location.href='menu.html'</script>";
        }else{
          echo"<script language='javascript' type='text/javascript'>alert('Não foi possível cadastrar nova task');window.location.href='menu.html'</script>";
        }
      }
    }



?>