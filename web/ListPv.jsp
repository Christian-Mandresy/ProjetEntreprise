<%--
  Created by IntelliJ IDEA.
  User: Mandresy
  Date: 18/01/2022
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Modele.Pv" %>
<%@ page import="base.BdTable" %>
<html>
<head>
    <title>List Pv</title>
</head>
<body>

<table>
    <tr>
        <th colspan="2">IdEmploye</th>
        <th colspan="2">Description</th>
        <th colspan="2">DatePublication</th>
        <th colspan="2">IdDocument</th>
    </tr>
    <% BdTable[] listPvs= (BdTable[]) request.getAttribute("ListPv"); %>
    <% for(int i=0;i<listPvs.length;i++) {%>
    <tr>
        <% Pv lepv= (Pv)listPvs[i]; %>
        <td> <%= lepv.getIdemploye()  %> </td>
        <td> <%= lepv.getDescription()  %> </td>
        <td> <%= lepv.getDatepublication()  %> </td>
        <td> <%= lepv.getIddocument()  %> </td>
    </tr>
    <% }%>
</table>
</body>
</html>
