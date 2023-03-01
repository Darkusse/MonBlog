<?php 
$id=$_GET['id'];
	
	$connect = mysqli_connect("127.0.0.1", "root", "", "blog");  

	$dlt="delete from article where id='".$id."'";
	$resultat = mysqli_query($connect,$dlt); 
	
	if($resultat){
		echo "Commentaire supprime";
	}
		else {
		echo "erreur ";
		}
	
	
	 ?>
<html lang="zxx">
<head>
	<title><?php echo $row['titre']; ?>|Blog</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/single.css">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
	
</head>
<body>
	<!--Header-->
	<?php include("header.php");?> 
	<!--//header-->
	<!--update database on page views-->
	
	<div class="banner-inner">
	</div>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.php">Acceuil</a>
		</li>
		<li class="breadcrumb-item active">Blog</li>
	</ol>
</body>	