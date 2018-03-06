		
		
		<head>
		</head>	
		
		<body>
<?php 
// Demarage de session et creation du cookie 

	session_start();
	setcookie('pseudo',$_POST['pseudo'], time() + 365*24*3600, null, null, false, true); 
		
		
	
			
			try
				{
					$bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
				}
				
			catch(Exception $e)
				{
					die('Erreur : '.$e->getMessage());
				}

			// Insertion du message avec une requête préparée

			$req = $bdd->prepare('INSERT INTO minichat (pseudo, message, date_commentaire) VALUES(?, ?, NOW())');
			$req->execute(array($_POST['pseudo'], $_POST['message']));


			// redirection

			header('Location: minichat.php');


			?>

</body>