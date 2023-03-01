<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr"> 
<head>
	<title>Blog</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<meta charset="utf-8">
	
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
</head>

<body>
	<?php include("header.php");?>
	<div class="banner-inner">
	</div>
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.php">Acceuil</a>
		</li>
		<li class="breadcrumb-item active">Blog</li>
	</ol>

	<!--/main-->
	<section class="main-content-w3layouts-agileits">
	<div class="course_demo1">
			<h3>Créer Un Article </h3>
		</div>
		<div class="container">
			<div class="row">
				<!--left-->
				<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
					<!--grid blogs below-->
					<div class="blog-girds-sec">
						<div class="orm-style-6">
<form action="" method="POST" enctype="multipart/form-data"> 
       <div>
    <label>auteur</label>
    <div>
      <input name="auteur" type="text">
    </div>
  </div>   
  <div>
    <label>titre </label>
    <div>
      <input name="titre" type="text"> 
   </div>
  </div>    
  <div>
    <label>Texte</label>
    <div>
      <textarea name="texte" rows="10" cols="50" tabindex="4"></textarea>
    </div>
  </div> 
  <div>
		<div>
  		<input name="ok" type="submit" value="envoyer">
    </div>
	</div>
</form>
</div>
					</div>
				</div>
<?php 
$connect = mysqli_connect("127.0.0.1", "root", "", "blog"); 
 
/* Vérification de la connexion */ 
if (!$connect) { 
   echo "Échec de la connexion : ".mysqli_connect_error(); 
   exit(); 
} 
if(isset($_POST['ok'])){
	/* Insertion de donnee */
$requete = "INSERT INTO article (auteur,titre,texte,date) VALUES ('".($_POST['auteur'])."','".addslashes($_POST['titre'])."','".addslashes($_POST['texte'])."',Now())";
$resultat = mysqli_query($connect,$requete); 
$identifiant = mysqli_insert_id($connect); 
/* Fermeture de la connexion */ 
mysqli_close($connect); 
 
if ($resultat) { 
   echo "<br />Ajout du Article réussi."; 
} 
else { 
   echo "<br />Le article n'a pas pu être ajouté."; 
} }
?> 

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
					<?php include("footer.php");?>
</body>
</html>
