<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Ejercicio16102018.Web.Index" %>
<%@ Import Namespace="Ejercicio16102018.Model" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <% DAO_porquesi dp = new DAO_porquesi();%>

    <h3>Top 3 juegos</h3>
    <% List<Juego> listaTop3 = dp.Top3(); %>
    <table>
        <% foreach (var item in listaTop3)
            {%>
         <td>
            <tr><%= item.Id%></tr>
            <tr><%= item.Nombre%></tr>
            <tr><%= item.Stock%></tr>
            <tr><%= item.Stock%></tr>
        </td>

            <%} %>


    </table>
    


    <br>
    <h3>Promedio de precios: <%= dp.PromedioPrecios() %></h3>
    <br>
    <h3>Juegos survival</h3>
    <br>





</body>
</html>
