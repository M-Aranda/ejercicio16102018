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

    <h1>Top 3 juegos</h1>
    <br>
    <h1>Promedio de precios: <%= dp.PromedioPrecios() %></h1>
    <br>
    <h1>Juegos survival</h1>
    <br>





</body>
</html>
