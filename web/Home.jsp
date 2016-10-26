<%-- 
    Document   : Home
    Created on : 06/10/2016, 23:54:00
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04: Home</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1 align="center">Equipe</h1>
        <div style="text-align: center; vertical-align: central">
        <div class="image">
            <a href="https://fb.com/guustavoaugusto"><img class="img-circle" src="images/gustavo.jpg" alt="Gustavo Augusto"></a>
            Gustavo Augusto - Web Developer.         
        </div>
        <div class="image">
            <a href="https://www.facebook.com/luishfranca?fref=ts"><img class="img-circle" src="images/luis.jpg" alt="Luis Henrique"></a>
            Luis Henrique - Web Developer.
        </div>
        <div class="image">
            <a href="https://www.facebook.com/renan.rosas?fref=ts"><img class="img-circle" src="images/renan.jpg" alt="Renan Ramalho"></a>
            Renan Ramalho - Web Developer.</br>
        </div>
        <div class="image">
            <a href="https://www.facebook.com/martaj0rge?fref=ts"><img class="img-circle" src="images/marta.jpg" alt="Marta Jorge"></a>
            Marta Jorge - Web Developer.</br>
        </div>
        <div class="image">
            <a href="https://www.facebook.com/pedrohenrique.gomesvilaverde?fref=ts"><img class="img-circle" src="images/josh.jpg" alt="Pedro Henrique"></a>
            Pedro Henrique - Web Developer.</br>
        </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
