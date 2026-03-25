var ID_Product

// Funzione ricerca prodotti
function Ricerca() {
	let filtro;
	filtro = document.getElementById("input").value;

	if (filtro == null) filtro = "";
	var currentURL = window.location.href;
	window.location.href = currentURL.substring(0, currentURL.lastIndexOf('/') + 1) + 'Shop?filter=' + filtro.toLowerCase() + '&action=ricerca'
}

// Funzione popup prodotto
function openPopup(id) {
	ID_Product = id;
	console.log(ID_Product);
	const popupOverlay = document.getElementById('popupOverlay');
	popupOverlay.style.display = 'block';
}

// Funzione chiusura popup
function closePopupFunc() {
	const popupOverlay = document.getElementById('popupOverlay');
	popupOverlay.style.display = 'none';
}

// Funzione modifica carrello
function modificaCarrello(azione) {
	const qty = document.getElementById('inputQty').value;
	var c = ID_Product;

	var xhr = new XMLHttpRequest();

	var finalString = "CartServlet?id=" + c + "&action=" + azione + "&quantity=" + qty;
	console.log(finalString);

	xhr.open("GET", finalString, true);

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4 && xhr.status === 200) {
			console.log("Oggetto aggiunto con successo al carrello!");
			var numeroElementi = xhr.responseText;
			console.log("elementi =" + numeroElementi);
			document.getElementById("contatoreCarrello").innerHTML = numeroElementi;
		}
	};

	xhr.send();

	closePopupFunc();
}