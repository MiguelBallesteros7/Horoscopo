<%-- 
    Document   : horoscopo
    Created on : 26-feb-2020, 12:50:19
    Author     : PcCom
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
    </head>
    <body>
        <form action="horoscopo" method="POST">
            <label for="nombre">Nombre: </label>
            <input type="text" name="nombre">

            <% ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");%>
            <% ArrayList<String> dias = (ArrayList<String>) request.getAttribute("dias");%>

            <label for="mes">Mes: </label>   
            <select name="mes">
                <% for (int i = 0; i < meses.size(); i++) {%>
                <option value="<%= meses.get(i)%>"><%= meses.get(i)%></option>
                <% }%>
            </select>

            <label for="dia">Dia: </label>  
            <select name="dia">
                <% for (int i = 0; i < dias.size(); i++) {%>
                <option value="<%= dias.get(i)%>"><%= dias.get(i)%></option>
                <% }%>
            </select>

            <button type="submit">Signo </button>

        </form>

        <% String signo = (String) request.getAttribute("signo");
            if (signo != null) {%>
        <h2>Eres del signo: <%= signo%></h2>
        <% }%>
    </body>
</html>
