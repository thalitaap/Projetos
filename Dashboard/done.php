<?php
$task = $_POST['task_done'];
$usuario = $_POST['usuario'];
	
$connect = new mysqli("localhost","adminuser","password","dashboardbd");

$query_select = "SELECT task FROM task_tabela WHERE task = '$task'";

$select = mysqli_query($connect,$query_select);

$array = mysqli_fetch_array($select);

$taskarray = $array['task'];

$done = $array['usuario_done'];

if($task == "" || $task == null){
    echo"<script language='javascript' type='text/javascript'>alert('O nome da task é campo obrigatório');window.location.href='edita_task.html';</script>";

    }else{
      if($taskarray == $task && $done == null){
		  $query = "UPDATE task_tabela SET usuario_done = '$usuario' WHERE task = '$task'";
        $insert = mysqli_query($connect,$query);

        if($insert){
          echo"<script language='javascript' type='text/javascript'>alert('A task foi marcada como DONE!');window.location.href='menu.html'</script>";
        }else{
          echo"<script language='javascript' type='text/javascript'>alert('Não foi possível marcar task como DONE.');window.location.href='menu.html'</script>";
        }
	  }else{
		  if ($done != null){
			echo"<script language='javascript' type='text/javascript'>alert('A task já foi marcada por outro usuário!');window.location.href='edita_task.html'</script>";
		  }else{
			  echo"<script language='javascript' type='text/javascript'>alert('Nome de task não encontrado!');window.location.href='edita_task.html'</script>";
		  }
	  }
 }
?>