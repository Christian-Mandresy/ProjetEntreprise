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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="tailwind,tailwindcss,tailwind css,css,starter template,free template,admin templates, admin template, admin dashboard, free tailwind templates, tailwind example">
    <!-- Css -->
    <link rel="stylesheet" href="./dist/styles.css">
    <link rel="stylesheet" href="./dist/all.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
    <title>Dashboard | Tailwind Admin</title>
</head>
<body style="background-color: #b8c2cc">

<h3>Gestion de contenue</h3>
<div style="margin: 10%">
    <h3>Gestion de contenue</h3>
    <div class="mb-2 md:mx-2 lg:mx-2 border-solid border-gray-200 rounded border shadow-sm w-full md:w-1/2 lg:w-1/2" style="background-color: aliceblue">
        <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
            List des PVs
        </div>
        <div class="p-3">
            <table class="table-fixed">
                <thead>
                <tr>
                    <th class="border-b bg-black text-white w-1/2 px-4 py-2">IdEmploye</th>
                    <th class="border-b bg-black text-white w-1/4 px-4 py-2">Description</th>
                    <th class="border-b bg-black text-white w-1/4 px-4 py-2">DatePublication</th>
                    <th class="border-b bg-black text-white w-1/4 px-4 py-2">IdDocument</th>
                </tr>
                </thead>
                <tbody>
                <% BdTable[] listPvs= (BdTable[]) request.getAttribute("ListPv"); %>
                <% for(int i=0;i<listPvs.length;i++) {%>
                <tr>
                    <% Pv lepv= (Pv)listPvs[i]; %>
                    <td class="border-b bg-white-400 text-black px-4 py-2"><%= lepv.getIdemploye()  %></td>
                    <td class="border-b bg-white-400 text-black px-4 py-2"><%= lepv.getDescription()  %></td>
                    <td class="border-b bg-white-400 text-black px-4 py-2"> <%= lepv.getDatepublication()  %></td>
                    <td class="border-b bg-white-400 text-black px-4 py-2"> <%= lepv.getIddocument()  %> </td>
                </tr>
                <% }%>
                <tr class="bg-gray-100">
                    <td class="border-b bg-green-400 text-white px-4 py-2">A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
                    <td class="border-b bg-green-400 text-white px-4 py-2">Adam</td>
                    <td class="border-b bg-green-400 text-white px-4 py-2">112</td>
                </tr>
                <tr>
                    <td class="border-b bg-red-500 text-white px-4 py-2">Into to JavaScript</td>
                    <td class="border-b bg-red-500 text-white px-4 py-2">Chris</td>
                    <td class="border-b bg-red-500 text-white px-4 py-2">1,280</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--/Underline form-->
</div>


<script src="./main.js"></script>
</body>
</html>
