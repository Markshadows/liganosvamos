<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/all.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/holder.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Khand:600" rel="stylesheet">
        <style>
            input { 
                text-align: center; 
            }

            select {
                text-align: center;
                text-align-last: center;
                /* webkit*/
            }
            body{
                font-family: 'Khand', sans-serif;
                font-size: 20px;
                background-image:url('img/equipos/torneo/lol-bg.png');
            }

        </style>


    </head>
    <body>
        <div class="container-fluid font-weight-bold">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <a class="navbar-brand" href="index.jsp" >Liga Nos Vamos</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="premios.jsp">Premios</a>
                        </li>
                    </ul>
                </div>
                <c:choose>
                    <c:when test="${usuario==null}">
                        <form action="" method="GET">

                            <a href="equipo/formulario.jsp" class="btn btn-info" role="button">Registrarse</a>
                            <c:choose>
                                <c:when test="${fn:contains (pageContext.request.requestURL,'equipo/formulario')}">
                                    <a href="login.jsp" class="btn btn-warning" role="button">Iniciar Sesión</a>
                                </c:when>
                                <c:when test="${fn:contains (pageContext.request.requestURL,'index')}">
                                    <a href="login.jsp" class="btn btn-warning" role="button">Iniciar Sesión</a>
                                </c:when>
                            </c:choose>
                        </form>
                    </c:when>
                    <c:when test="${usuario.tipo.id == 1}">
                        <a href="superusuario/index.jsp" class="btn btn-warning" role="button">SuperUsuario</a>
                    </c:when>
                    <c:when test="${usuario.tipo.id == 2}">
                        <a href="administrador/index.jsp" class="btn btn-warning" role="button">Administrador</a>
                    </c:when>
                    <c:when test="${usuario.tipo.id == 3}">
                        <a href="equipo/index.jsp" class="btn btn-warning" role="button">Mi Equipo</a>
                    </c:when>
                </c:choose>

            </nav>


        </div>

    </body>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/tilt.jquery.js" type="text/javascript"></script>
</html>
