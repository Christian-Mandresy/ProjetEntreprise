<%@ page import="base.BdTable" %>
<%@ page import="Modele.Document" %><%--
  Created by IntelliJ IDEA.
  User: ITU
  Date: 15/12/2021
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="http://localhost:8080/Entreprise_war_exploded/RecherchePv.do">

    <label for="Employer">Selectionner un employer</label>
    <select name="IdEmploye" id="">
        <option value="0">Ajouter filtre par employe</option>
        <% BdTable[] listEmpl= (BdTable[]) request.getAttribute("ListEmploye"); %>
        <% for(int i=0;i<listEmpl.length;i++) {%>
        <% Modele.Employe emp= (Modele.Employe)listEmpl[i]; %>
        <option value="<%= emp.getId()  %>"> <%= emp.getNom() %>  </option>
        <% }%>
    </select>
    <label for="Description">Description</label>
    <input type="text" name="Description">
    <label for="DatePublication">Date</label>
    <input type="date" name="DatePublication" >
    <label for="Document">Document</label>
    <select name="IdDocument" id="">
        <option value="0">filtrer par document</option>
        <% BdTable[] listDoc= (BdTable[]) request.getAttribute("ListDocument"); %>
        <% for(int i=0;i<listDoc.length;i++) {%>
        <% Modele.Document doc= (Modele.Document)listDoc[i]; %>
        <option value="<%= doc.getIddocument()  %>"> <%= doc.getNomdocument() %>  </option>
        <% }%>
    </select>
    <button type="submit">valider</button>
</form>
</body>
</html>
