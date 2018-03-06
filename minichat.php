
  
   <!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="stylechat.css">
		<title>Mini-chat</title>
		
    </head>

	<body>
	<!--formulaire pour le minichat -->
	
	<div id="container">
		<div class="pseudo">
			<form action="minichat_post.php" method="post" enctype="multiport/form-data">
					<p> <label>Pseudo : <input type="text" name="pseudo" id="pseudo" value="<?php if(isset($_COOKIE['pseudo']))
																								{
																									echo $_COOKIE['pseudo'];
																								}
																							?>"/> 
						</label> </p>
				</div>
				<div class="message">
					<p><label for='message'>Message : <textarea rows="15" cols="60" style="overflow:hidden" id="message" name="message"></textarea></label></p>
				</div>
				
				<div class="boutonenvoyer">
					<input type="submit" value="Envoyer"/>
				</div>
			
			</form>
			
		<!-- affichage des 10 derniers messages (lire des données)-->
				<div class="salon">
					<?php
					 try
						{
							$bdd = new PDO('mysql:host=localhost;dbname=minichat;chartset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));

						
							$requete = $bdd->query('SELECT pseudo, message, DATE_FORMAT(date_commentaire, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire FROM minichat ORDER BY id DESC LIMIT 15');
							$messages = array_reverse ($requete->fetchAll(PDO::FETCH_ASSOC));
							foreach($messages as $donnees)
								
								{
									echo '<strong> Le: ' .htmlspecialchars($donnees['date_commentaire']). ' -- ' . htmlspecialchars($donnees['pseudo']) . ': </strong>' . htmlspecialchars($donnees['message']) . '<br/>';
								}
							$requete->closeCursor();
						}
						
					catch(Exception $e)
						{
							die('Erreur : '.$e->getMessage());
						}	
				
					?>
				</div>
	
	</div>
	
    </body>
</html>
   
   
   