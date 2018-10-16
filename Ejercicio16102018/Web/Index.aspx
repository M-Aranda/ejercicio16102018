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
    <% List<Juego> listaTop3 = dp.Top3();
       List<Juego> listaSurvival = dp.VerJuegosSurvival();

        %>
    <table border="1">
            <td>Id</td>
            <td>Nombre</td>
            <td>Stock</td>
            <td>Precio</td>
        </th>
        <% foreach (var item in listaTop3)
            {%>

         <tr>
            <td><%= item.Id%></td>
            <td><%= item.Nombre%></td>
            <td><%= item.Stock%></td>
            <td><%= item.Precio%></td>
        </tr>

            <%} %>


    </table>
    


    <br>
    <h3>Promedio de precios: <%= dp.PromedioPrecios() %></h3>
    <br>
    <h3>Juegos survival</h3>
    <br>
     <table border="1">
            <td>Id</td>
            <td>Nombre</td>
            <td>Stock</td>
            <td>Precio</td>
        </th>
        <% foreach (var item in listaSurvival)
            {%>

         <tr>
            <td><%= item.Id%></td>
            <td><%= item.Nombre%></td>
            <td><%= item.Stock%></td>
            <td><%= item.Precio%></td>
        </tr>

            <%} %>


    </table>





</body>
</html>
