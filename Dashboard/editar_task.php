<?php
$task = $_POST['task'];
$descricao = $_POST['descricao'];
$prioridade = $_POST['prioridade'];

$connect = new mysqli("localhost","adminuser","password","dashboardbd");

$query_select = "SELECT * FROM task_tabela WHERE task = '$task'";

$select = mysqli_query($connect,$query_select) or die ('Falha ao selecionar task');

$array = mysqli_fetch_array($select);

$taskarray = $array['task'];

if($taskarray != $task || $task == "" || $task == null){
    echo"<script language='javascript' type='text/javascript'>alert('Nome inválido de task');window.location.href='edita_task.html';</script>";

    }else{
       		$query = "UPDATE task_tabela SET descricao = '$descricao', prioridade = '$prioridade' WHERE task = '$task'";
        	$insert = mysqli_query($connect,$query);

        	if($insert)
			{
          		echo"<script language='javascript' type='text/javascript'>alert('Sua task foi editada com sucesso!');window.location.href='menu.html'</script>";
        	}else{
          		echo"<script language='javascript' type='text/javascript'>alert('Não foi possível editar task.');window.location.href='menu.html'</script>";

     		}
 		}

?>