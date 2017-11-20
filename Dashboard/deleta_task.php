<?php
$task = $_POST['task_remove'];

$connect = new mysqli("localhost","adminuser","password","dashboardbd");

$query_select = "DELETE FROM task_tabela WHERE task = '$task'";

$select = mysqli_query($connect,$query_select) or die ('Falha ao deletar task');

echo"<script language='javascript' type='text/javascript'>alert('A task foi removida com sucesso!');window.location.href='menu.html';</script>";

?>
