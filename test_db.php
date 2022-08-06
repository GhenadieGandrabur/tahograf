<html>
  <head>
    <title>TEST</title>
  </head>
  <body>
	  <h1>Test connection</h1>
<?php
	include 'includes/DatabaseConnection.php';
    include 'classes/DatabaseTable.php';
	$result = new DatabaseTable($pdo,'services','id');
	$list = $result->findAll();
	$pl = [];
	foreach ($list as $serv) {
	$pl[] = [
				'id' => $serv['id'],
				'name' => $serv['name'],
				'price' => $serv['price']
				
			];
	}	   
?>
	  <table border="1">
	  <?php foreach($pl as $pls): ?>
		<tr>  
			<td><?=$pls['id']?></td>
			<td><?=$pls['name']?></td>
			<td><?=$pls['price']?></td>
			<td>Lei</td>
		  </tr>
	  <?php endforeach; ?>
	  </table>
  </body>
</html>
