ce<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <jsp:include page="../head/heads2.jsp"></jsp:include>
    </head>
    <body>
        <div class="container-fluid font-weight-bold bg-dark">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <a class="navbar-brand" href="../index.jsp" >Bienvenido ${usuario.nombre}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="detalle-equipo.jsp">Mi Equipo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="agregar-jugador.jsp">Agregar Jugadores</a>
                        </li>
                    </ul>
                </div>
                        <a href="../login?op=logout" class="btn btn-warning">Cerrar sesión</a>
            </nav>
        </div>
    </body>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/tilt.jquery.js" type="text/javascript"></script>
</html>
