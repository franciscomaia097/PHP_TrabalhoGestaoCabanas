<?php
include 'header.php';

?>
<body>

<?php

if($_SESSION['tipoUtilizador'] != 1){
    header('Location: pagina_Inicial.php');
}
include "baseDados/bd.h";
$sql = "SELECT * FROM utilizadores, tipoUtilizador where utilizadores.tipoUtilizador = tipoutilizador.idTipo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  echo "<h1>Gestão de utilizadores</h1>"; 

  echo "<a href='adicionarUtilizador.php'><button class='button'>Adiconar utilizador</button></a>";

  echo "<table id='t01'>
  
<tr>
<th>Nome</th>
<th>Email</th>
<th>Morada</th>
<th>Telefone</th>
<th>Tipo de utilizador</th>
<th>Validar</th>
<th>Eliminar</th>
<th>Editar</th>
</tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
echo "<td>" . $row['nomeUtilizador'] . "</td>";
echo "<td>" . $row['mail'] . "</td>";
echo "<td>" . $row['morada'] . "</td>";
echo "<td>" . $row['telefone'] . "</td>";
echo "<td>" . $row['nomeTipo'] . "</td>";
echo "<td>";
if($row['tipoUtilizador'] == 3){
echo "<a href='validarUtilizador.php?id=" . $row['nomeUtilizador'] . "&estado=" . $row['tipoUtilizador'] . "'><img src='imagens/verifica.png' class='verifica'></a>";
}
else if($row['tipoUtilizador'] == 2){
echo "<a href='validarUtilizador.php?id=" . $row['nomeUtilizador'] . "&estado=" . $row['tipoUtilizador'] . "'><img src='imagens/fechar.png' class='verifica'></a>";
}
//buttão para eliminar utilizador
echo "<td> <a href='eliminarUtilizador.php?nomeUtilizador=" . $row['nomeUtilizador'] . "'><button class='button'>Eliminar</button></a>";
//button to edit user information
echo "<td> <a href='editarUtilizador.php?nomeUtilizador=" . $row['nomeUtilizador'] . "'><button class='button'>Editar</button></a>";




echo "</td>";
echo "</tr>";
  }
} else {
  echo "0 results";
}
echo "</table>";
$conn->close();

?>
</body>
</html>

