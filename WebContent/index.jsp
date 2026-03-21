<!doctype html>
<html lang="it">
<head>
	<meta charset="utf-8">>
	<link href="CSS/style.css" rel="stylesheet">
	<link rel="icon" type="image/svg+xml" href="img/logo/logo.svg">
	<title>Part-C</title>
</head>

<body>
<jsp:include page='header.jsp'>
	<jsp:param name="PageTitle" value="index"/>
</jsp:include>

	<div class="hero">
		<div class="containerTitle">
			<h1>Home</h1>
		</div>
	</div>

	<main>
		<div class="divider"><span>PRODOTTI CONSIGLIATI</span></div>


		<section class="homeShop">
			<div class="homeRow">
				<div class="productContainer">
					<a class="productItem" id="empty">
						<img src="img/products/emptyProduct.png" class="ProductImage productImg" id="emptyImg">
						<h3 class="productTitle">SHOP VUOTO</h3>
					</a>
				</div>
				
				<div class="productContainer">
					<a class="productItem">
						<img src="img/logo/logo.svg" class="ProductImage productImg">
						<h3 class="productTitle"></h3>
						<strong class="productPrice"> &#128;</strong>
					</a>
				</div>
			</div>
		</section>
	</main>
		<jsp:include page='footer.html'>
		<jsp:param name="PageTitle" value="index"/>
	</jsp:include>
</body>
</html>