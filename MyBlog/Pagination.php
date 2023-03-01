

<body>
<?php
$con = mysqli_connect("127.0.0.1", "root", "", "blog");
//Initialisation du nombre d'éléments à afficher (le PAS)
$artParPage = 3;
$artTotalR= $con ->query('select id from article');
$artTotal=mysqli_num_rows($artTotalR) ;
$pagetotal= ceil($artTotal/$artParPage);


if (isset($_GET['page']) and !empty($_GET['page']) and $_GET['page'] >0 ){
	$_GET['page'] = intval($_GET['page']);
	$pagecour = $_GET['page'];
	
}else {
	$pagecour = 1 ;
}
$depart = ($pagecour-1)*$artParPage ;
?>
<?php

// Partie "Requête"
$query = ( "SELECT * FROM `article`Order by id DESC LIMIT $depart, $artParPage ");
$res =mysqli_query($con,$query);


while ($ligne = mysqli_fetch_assoc($res))  {

?>
<?php	
    // C'est là qu'on affiche les données order by id DESC LIMIT '.$depart.' :)
echo $ligne['id']; ?> - <?php echo $ligne['pseudo'];
echo '<br /> <br />';
?>
<?php
}
?>
<?php
for ($i=1; $i<=$pagetotal ; $i++){
	if($i == $pagecour){
		echo $i.' ';
	}else {		
		echo '<a href="pagination.php?page='.$i.'">'.$i.' </a>' ;
	}
}
?>

 </body>