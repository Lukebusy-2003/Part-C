<!DOCTYPE html>
<html lang="it" dir="ltr">
<%@ page
	import="java.util.ArrayList,prodotto.ProductBean,java.text.DecimalFormat,utente.User"%>

<head>
<link rel="shortcut icon" type="image/gif" href="img/logo.png">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<title>Part-C</title>
</head>

<body>

	<jsp:include page='header.jsp'>
		<jsp:param name="PageTitle" value="cart" />
	</jsp:include>

	<div class="hero">
		<div class="containerTitle">
			<h1>Carrello</h1>
		</div>
	</div>
	
	<main>
		<div class="bg">
			<section>
				<div class="cartContainer">
					<div class="cart">
						

						<div class="itemContainer" id="empty-cart-message">
							<div class="cart-item">
								<div class="cartRow">
									<div class="imgContainer center-item">
										<img id="pImg" class="kaioken" src="img/products/emptyProduct.png" alt="">

									</div>
									<div class="dataContainer center-item">
										<h5>
C'era una Case dove i vari componenti davano ascolto, chi piu' velocemente, chi meno, alla Scheda madre.<br><br>

La Scheda madre: "CPU, hai fatto i compiti? Se non li hai fatti, è il momento"<br>
La CPU: "Eseguo!"<br><br>

Scheda madre chiede alla RAM: "Hai studiato anche tu per l'interrogazione di domani?"<br>
La RAM: "Oh, no! Lo avevo deallocato dalla memoria!"<br><br>

La scheda madre alla PSU: "Come ti senti per la partita di domani?"<br>
La PSU: "Carico!"<br><br>

La scheda madre alla Storage: "Potresti conservare questi ricordi?"<br>
La Storage: "Li salvo su un disco"<br><br>

La scheda madre alla Scheda video: "Allora, quel progetto sul videogioco?"<br>
La Scheda video: "Te lo faccio vedere subito!"<br><br>
</h5>
<h5 id="cartVuoto">Il Carrello è vuoto ma aspettiamo di dare un componente da amare anche alla vostra Case!</h5>
									</div>
								</div>
							</div>
						</div>

						
						
						<div class="itemContainer">
							<div class="cart-item">
								<div class="cartRow">
								
									<div class="generiContainer"><h5>Subtotale:</h5></div>
									<div class="generiContainer status">
										<h5><span>Prezzo</span> &#128;</h5>
									</div>
									
									<div class="generiContainer"><h5>Spedizione:</h5></div>
									<div class="generiContainer status">
										<h5><span>50</span> &#128;</h5>
									</div>
									
									<div class="generiContainer"><h5 class="finalPrice">Totale:</h5></div>
									<div class="generiContainer status">
										<h5><span class="finalPrice">Prezzo Totale &#128;</span></h5>
									</div>
									
								</div>
							</div>
							<div class="CheckOutContainer">

    <form action="..." method="POST">
        <input type="submit" class="checkOutBtn" value="Check Out">
    </form>

</div>
						</div>

					</div>
				</div>
			</section>
		</div>
	</main>

	<jsp:include page="footer.html"></jsp:include>


</body>

</html>