<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<html>
<head>
    <title>Liste des Produits</title>
</head>
<body>
    <h2>Veuillez choisir un produit :</h2>
    <form action="Panier" method="POST">
        <input type="radio" name="idProduit" value="1"> PC Portable <br>
        <input type="radio" name="idProduit" value="2"> Imprimante <br>
        <input type="radio" name="idProduit" value="3"> Scanner <br>
        <br>
        <button type="submit">Ajouter au panier</button>
    </form>
    <br>
    <a href="Afficher.jsp">Voir le panier</a>
    <br>
    <a href="Deconnexion.jsp">Se déconnecter</a>
</body>
</html>
