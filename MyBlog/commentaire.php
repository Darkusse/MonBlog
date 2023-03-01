<?php //code to get the item using its id
$con = mysqli_connect("127.0.0.1", "root", "", "blog");
$id=$_REQUEST['id']; 
$query="SELECT * from article where id='".$id."'";
$result=mysqli_query($con,$query) ; 
$row = mysqli_fetch_assoc($result);

?>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title><?php echo $row['titre']; ?>|Blog</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/jquery.desoslide.css">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
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

	<!--//banner-->
	<section class="banner-bottom">
		<!--/blog-->
		<div class="container">
			<div class="row">
				<!--left-->
				<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
					<div class="blog-grid-top">
						<div class="b-grid-top">
							<div class="blog_info_left_grid">
							</div>
							<div class="blog-info-middle">
								<ul>
									<li>
										<a href="#">
											<i class="far fa-calendar-alt"></i><?php echo $row['date']; ?></a>
										</li>
										<li class="mx-2">
											<a href="#">
												<i class="far fa-user"></i><?php echo $row['auteur']; ?></a>
											</li>
												
												</ul>
											</div>
										</div>

										<h3>
											<a href="single.html"><?php echo $row['titre']; ?></a>
										</h3>
										<!--sharing script-->
										<?php echo nl2br($row['texte']); 
										echo "<br/>";
										echo "<a href=suparticle.php?id=".$row['id']. ">supprime </a>
										<a href=uparticle.php?id=".$row['id']. ">modifier </a>";
										;	
										?>
									</div>
									<div class="container">
										<h1>Commentaire </h1>
									<form action="" method="POST" enctype="multipart/form-data"> 
									  <p>Nom: <input type="text" name="pseudo" /></p><br/>
									  <p>Email: <input type="email" name="mail" /></p>	  
									  <p>Commentaire: <br /><textarea name="cmt" rows="10" cols="50"></textarea></p> 
									  <br /> 
									  <input type="submit" name="ok" value="Envoyer">  
									   
									</form>
									</div>
									<!--comments script will go here-->
									<?php 
										$connect = mysqli_connect("127.0.0.1", "root", "", "blog");  
										if(isset($_POST['ok'])){
											/* Insertion de donnee */
										$requete = "INSERT INTO commentaire (pseudo,email,texte,date, id_article) VALUES ('".($_POST['pseudo'])."','".($_POST['mail'])."','".addslashes($_POST['cmt'])."',Now(),$id)";
										$resultat = mysqli_query($connect,$requete); 
										$identifiant = mysqli_insert_id($connect); 

										if ($resultat) { 
										   echo "<br />Ajout du commentaire réussi."; 
										} 
										else { 
										   echo "<br />Le commentaire n'a pas pu être ajouté."; 
										} }
										?> 
									<?php
										$com = "SELECT * FROM commentaire where id_article=$id ORDER BY date DESC "; 
										   if ($res = mysqli_query($connect,$com)) { 
													 /* fetch le tableau associatif */ 
											  while ($ligne = mysqli_fetch_assoc($res)) { 
												 
												 echo "<p><strong>".$ligne['pseudo']."</strong></p>","".$ligne['date']."" ;
												 
												echo "<div style='width:400px'>".$ligne['texte']." 
												
												<div class=\"input-group\">
											
												<button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" >Editer <span></span></button>
												<ul class=\"dropdown-menu\">
												<li><a href=supp.php?id=".$ligne['id']. ">supprime </a></li>
												<li><a href=update.php?id=".$ligne['id']. ">modifier </a></li>

</ul>

</div>
												
												</div>" ;
												  } 
										   }
										   ?>
																
								</div>

								<!--//left-->
								<!--right-->
								<aside class="col-lg-4 agileits-w3ls-right-blog-con text-right">
									<div class="right-blog-info text-left">
										
										<div class="tech-btm widget_social">
											<h4>Reseau Sociaux</h4>
											<ul>

												<li>
													<a class="twitter" href="http://www.twitter.com">
														<i class="fab fa-twitter"></i>
														<span class="count"></span> Twitter</a>
													</li>
													<li>
														<a class="facebook" href="http://www.facebook.com">
															<i class="fab fa-facebook-f"></i>
															<span class="count"></span> Facebook</a>
														</li>
														<li>
															<a class="dribble" href="http://www.dribble.com">
																<i class="fab fa-dribbble"></i>

																<span class="count"></span> Dribble</a>
															</li>
															<li>
																<a class="pin" href="http://www.pinterest.com">
																	<i class="fab fa-pinterest"></i>
																	<span class="count"></span> Pinterest</a>
																</li>

															</ul>
														</div>
													</div>
												</aside>
												<!--//right-->
											</div>
										</div>
									</section>
									<!--//main-->
									<!--footer-->
									<?php include("footer.php");?>
							</body>

							</html>