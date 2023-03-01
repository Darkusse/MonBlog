
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr"> 
<head>
	<title>Blog</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<meta charset="utf-8">
	
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/jquery.desoslide.css">
	<link href="css/single.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	rel="stylesheet">
</head>
<body>
	<?php include("header.php");?>
	<?php include("banner.php");?>
	<section class="bottom-slider">
		<div class="course_demo1">
			<H2>Liste des ArticleS </H2>
		</div>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/main-->
	<section class="main-content-w3layouts-agileits">
		<div class="container">
			<div class="row">
				<!--left-->
				<div class="col-lg-8 left-blog-info-w3layouts-agileits text-left">
					<!--grid blogs below-->
					<div class="blog-girds-sec">
						<div class="row">
							
							<?php 
							$con = mysqli_connect("127.0.0.1", "root", "", "blog");
							$artParPage = 6;
							$artTotalR= $con ->query('select id from article');
							$artTotal=mysqli_num_rows($artTotalR) ;
							$pagetotal= ceil($artTotal/$artParPage);
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
							
							if (isset($_GET['page']) and !empty($_GET['page']) and $_GET['page'] >0 ){
								$_GET['page'] = intval($_GET['page']);
								$pagecour = $_GET['page'];
								
							}else {
								$pagecour = 1 ;
							}
							$depart = ($pagecour-1)*$artParPage ;
							?>
							<?php
							$sql=("SELECT * FROM `article`Order by id DESC LIMIT $depart, $artParPage ");
							$res =mysqli_query($con,$sql);

							while ($ligne = mysqli_fetch_assoc($res))  {
							?>
							<?php	
								echo '<div class="col-md-6 blog-grid-top">
								<div class="b-grid-top">
								<h3>
								<a href="commentaire.php?id='.$ligne['id'].'">'.$ligne['titre'].'</a>
								
								</h3>
								</div>
								<ul class="blog-icons">
								<li>
								<a href="#">
								<i class="far fa-clock"></i>'.$ligne['date'].'</a>
								</li>
								<li class="mx-2">
								<a href="#">
								<i class="far fa-user"></i> '.$ligne['auteur'].'</a>
								</li></ul></div>';  
								?>
								<?php
								'<br />';
									}
									?>									
						</div>
					</div>
					
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
								
								
								<div id="pagination">
									<ul class="pagination">
									<?php if ($pagetotal > 1): ?>
									<li class="prev"><a href="index.php?page=<?php echo $pagetotal-1 ?>">Prev</a></li>
									<?php endif; ?>
									
										<?php for($i = 1; $i<= $pagetotal; $i++) : ?>
										<li><a href="index.php?page=<?= $i; ?>"><?= $i; ?></a></li>
										<?php endfor; ?>
										
									<?php if ($page < ceil($artTotal / $artParPage)): ?>	
									<li class="next"><a href="INDEX.php?page=<?php echo $page+1 ?>">Next</a></li>
									<?php endif; ?>
										  </ul>
										</div>
							</div>
						</div>
					</section>
				
					<?php include("footer.php");?>
					<!---->
					<!-- js -->
					<script src="js/jquery-2.2.3.min.js"></script>
					<!-- //js -->
					<!-- desoslide-JavaScript -->
					<script src="js/jquery.desoslide.js"></script>
							<!-- //Custom-JavaScript-File-Links -->
							<script src="js/bootstrap.js"></script>

						</body>
						</html>