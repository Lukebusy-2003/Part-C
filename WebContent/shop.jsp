<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, prodotto.ProductBean, prodotto.ProductDaoDataSource, java.text.DecimalFormat" %>


<!doctype html>
<html lang="it">
<head>
<meta charset="utf-8">
<link href="CSS/style.css" rel="stylesheet">
<link rel="icon" type="image/svg+xml" href="img/logo/logo.svg">
<title>Part-C</title>
</head>

<body>

<jsp:include page='header.jsp'>
    <jsp:param name="PageTitle" value="index" />
</jsp:include>

<div class="hero">
    <div class="containerTitle">
        <h1>Shop</h1>
    </div>
</div>

<main>
    <div class="row">
        
        <div class="column">
            <div class="category">
                <h2>Categorie</h2>
				<div class="categoryItem">
    				<a class="selectionMenu" href="#">
        				<img class="categoryIcon" src="img/icons/iconAll.png"><span>Tutti i prodotti</span>
    				</a>
				</div>
				
                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconMb.png"><span>Schede Madre</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconCPU.png"><span>Processori</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconRAM.png"><span>RAM</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconGPU.png"><span>Schede Video</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconPSU.png"><span>Alimentatori</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconSSD.png"><span>Archiviazione</span>
                    </a>
                </div>

                <div class="categoryItem">
                    <a class="selectionMenu" href="#">
                        <img class="categoryIcon" src="img/icons/iconCase.png"><span>Case</span>
                    </a>
                </div>


            </div>
        </div>

        <div class="column2">
            <section class="Shop">
                <div class="ShopRow">

                   

                        <div class="productContainer">
                            <a class="productItem" id="empty">
                                <img src="img/products/emptyProduct.png" class="ProductImage productImg" id="emptyImg">
                                <h3 class="productTitle">SHOP VUOTO</h3>
                            </a>
                        </div>

                    

                        <div id="shopProduct" class="productContainer">
                            <a class="productItem">
								<div class="imgBox">
                                	<img src="img/products/AorusB450PRO.png" class="ProductImage productImg">
								</div>
                                <h3 class="productTitle">Titolo</h3>

                                <strong class="productPrice">
                                    Prezzo &#128;
                                </strong>

                                <span class="crossIcon" onclick="...">
                                    <img src="img/icons/cross.svg" class="ProductImage">
                                </span>

                            </a>
                        </div>
                </div>
            </section>
        </div>
    </div>
</main>

<jsp:include page='footer.html'>
    <jsp:param name="PageTitle" value="index" />
</jsp:include>

</body>
</html>