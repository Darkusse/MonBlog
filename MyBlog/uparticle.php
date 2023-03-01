<?php
$getid=$_GET['id'];
	$connect = mysqli_connect("127.0.0.1", "root", "", "blog");
	
	$selectd = "SELECT * FROM `article` WHERE `id` = '$getid'";

    $qry = mysqli_query($connect, $selectd);
	$selassoc = mysqli_fetch_assoc($qry);



$id = $selassoc['id'];

$auteur = $selassoc['auteur'];

$texte = $selassoc['texte'];

$titre = $selassoc['titre'];



if(isset($_POST['update'])) {

 $uppseudo =  $_POST['auteur'];

 $uptexte =  $_POST['texte'];

 $upemail =  $_POST['titre'];


 $seleditt = "UPDATE `article` SET `auteur`='$uppseudo',`titre`='$upemail',`texte`='".addslashes($uptexte)."' WHERE `id` = '$getid'";
 $qry = mysqli_query($connect,$seleditt);
if($qry) {
 echo "<br />Ajout du Update réussi."; 
										} 
										else { 
										   echo "<br />Le Update n'a pas pu être ajouté."; 
										}
 
}


?>
 
<html>
<head>
 <title></title>
</head>
<body>
<form method="POST" action="">
 <p>auteur:</br> <input type="text" name="auteur" value="<?php echo $auteur; ?>"></P><br><br>
 <P>titre:</br><input type="text" name="titre" value="<?php echo $titre; ?>"></p><br><br>
 <p>texte:</br></br> <textarea name="texte" rows="10" cols="50"> <?php echo $texte ; ?></textarea></p> <br><br>
 
 <input type="submit" name="update" value="Update">
 <input type = "button" value = "Retour!"  onclick = "history.back()">

</form>
</body>
</html>