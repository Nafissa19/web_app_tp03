<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Affichage des propri�t�s du bean </title>
</head>
<body>
<h1> Affichage des �tudiants ( avec useBean)...</h1>
<jsp:useBean id="etdRequest" class="beans.Etudiant" scope="request" />
 <%
 out.println("Etudiant (request)= "+etdRequest);
 %>
 <hr>
 <jsp:useBean id="etd" class="beans.Etudiant" scope="session" >
 <p> nouveau bean </p>
 <%

 out.println("Nouvel Etudiant (session)= "+etd);
 etd.setNom("Ben saleh");
 etd.setPrenom("Mohamed");
 etd.setNumero(4);
 out.println("Nouvel Etudiant (session)= "+etd);
 %>
 </jsp:useBean>
 <hr>
 <%
 out.println("Avant modification :"+etd.getPrenom());
 etd.setPrenom("Mohamed Ali");
 out.println("Apr�s modification :"+etd.getPrenom());
 %>

 Avant modification: <jsp:getProperty name="etd" property="prenom" />
 <jsp:setProperty name="etd" property="prenom" value="Hichem" />
 Apr�s modification:
<jsp:getProperty name="etd" property="prenom" />
 <hr>

</body>
</html>