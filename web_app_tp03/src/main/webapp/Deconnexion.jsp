<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Déconnexion</title>
</head>
<body>
    <h2>Déconnexion réussie</h2>
    <p>Vous avez été déconnecté avec succès.</p>

    <%
        // Détruire la session utilisateur
        session.invalidate();  // Détruire la session
    %>

    <br>
    <a href="ListeProduits.jsp">Retour à la liste des produits</a>
</body>
</html>
