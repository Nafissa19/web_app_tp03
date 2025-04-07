<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Contenu du Panier</title>
</head>
<body>
    <h2>Contenu de votre panier</h2>
    <%
        List<String> panier = (List<String>) session.getAttribute("panier");
        if (panier == null || panier.isEmpty()) {
    %>
        <p>Votre panier est vide.</p>
    <%
        } else {
            Map<String, String> produits = new HashMap<>();
            produits.put("1", "PC Portable");
            produits.put("2", "Imprimante");
            produits.put("3", "Scanner");

            out.println("Vous avez " + panier.size() + " achats<br><ul>");
            for (String id : panier) {
                out.println("<li>" + produits.get(id) + "</li>");
            }
            out.println("</ul>");
        }
    %>
    <form action="ListeProduits.jsp">
        <button type="submit">ajouter un autre produit</button>
    </form>
    <form action="Deconnexion.jsp">
        <button type="submit">Se déconnecter</button>
    </form>
</body>
</html>
