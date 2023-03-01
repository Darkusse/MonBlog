<?php
$getid=$_GET['id'];
	$connect = mysqli_connect("127.0.0.1", "root", "", "blog");
	
	$selectd = "SELECT * FROM `commentaire` WHERE `id` = '$getid'";

    $qry = mysqli_query($connect, $selectd);
	$selassoc = mysqli_fetch_assoc($qry);



$id = $selassoc['id'];

$pseudo = $selassoc['pseudo'];

$texte = $selassoc['texte'];

$email = $selassoc['email'];



if(isset($_POST['update'])) {

 $uppseudo =  $_POST['pseudo'];

 $uptexte =  $_POST['texte'];

 $upemail =  $_POST['email'];


 $seleditt = "UPDATE `commentaire` SET `pseudo`='$uppseudo',`email`='$upemail',`texte`='$uptexte' WHERE `id` = '$getid'";
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
 <p>Pseudo: </br><input type="text" name="pseudo" value="<?php echo $pseudo; ?>"></P><br><br>
 <P>Email:</br><input type="text" name="email" value="<?php echo $email; ?>"></p><br><br>
 <p>Texte:</br></br><textarea name="texte" rows="10" cols="50"><?php echo $texte ; ?></textarea></p> <br><br>
 
 <input type="submit" name="update" value="Update">
 <input type = "button" value = "Retour!"  onclick = "history.back()">
</form>
</body>
</html>