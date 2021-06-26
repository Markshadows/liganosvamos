<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/all.min.js" type="text/javascript"></script>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/holder.js" type="text/javascript"></script>
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
        background-image:url('../../img/equipos/torneo/lol-bg.png');
    }
    
</style>

    </head>
    <body>
        <div class="container-fluid font-weight-bold bg-dark">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <c:choose>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                        <a class="navbar-brand" href="../procesoSession" >Bienvenido ${usuario.nombre}</a>
                    </c:when>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'liga')}">
                        <a class="navbar-brand" href="../../procesoSession" >Bienvenido ${usuario.nombre}</a>
                    </c:when>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'competicion')}">
                        <a class="navbar-brand" href="../../procesoSession" >Bienvenido ${usuario.nombre}</a>
                    </c:when>
                    <c:otherwise>
                        <a class="navbar-brand" href="../procesoSession" >Bienvenido ${usuario.nombre}</a>
                    </c:otherwise>
                </c:choose>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Ligas
                            </a>
                            <div class="dropdown-menu">

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="liga/agregar.jsp">Agregar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="agregar.jsp">Agregar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="../administrador/liga/agregar.jsp">Agregar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../liga/agregar.jsp">Agregar</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="liga/modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="../administrador/liga/modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../liga/modificar.jsp">Modificar</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="liga/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="../administrador/liga/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../liga/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="liga/listar.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="listar.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="../administrador/liga/listar.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../liga/listar.jsp">Listar</a>  
                                    </c:when>
                                </c:choose>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Equipos
                            </a>
                            <div class="dropdown-menu">

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="../equipo/formulario.jsp">Crear</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../../equipo/formulario.jsp">Crear</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="formulario.jsp">Crear</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../../equipo/formulario.jsp">Crear</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="../equipo/modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../../equipo/modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="modificar.jsp">Modificar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../../equipo/modificar.jsp">Modificar</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="../equipo/agregar-jugador.jsp">Crear Jugador</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../../equipo/agregar-jugador.jsp">Crear Jugador</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="agregar-jugador.jsp">Crear Jugador</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../../equipo/agregar-jugador.jsp">Crear Jugador</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="../equipo/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../../equipo/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../../equipo/eliminar.jsp">Eliminar</a>  
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="../equipo/detalle-equipo.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../../equipo/detalle-equipo.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="detalle-equipo.jsp">Listar</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="../../equipo/detalle-equipo.jsp">Listar</a>  
                                    </c:when>
                                </c:choose>

                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Competición
                            </a>
                            <div class="dropdown-menu">
                                <c:choose>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                                        <a class="dropdown-item" href="competicion/crear-llaves.jsp">Crear Llaves</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                                        <a class="dropdown-item" href="../competicion/crear-llaves.jsp">Crear Llaves</a>  
                                    </c:when>
                                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                                        <a class="dropdown-item" href="../administrador/competicion/crear-llaves.jsp">Crear Llaves</a>  
                                    </c:when>
                                        <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                                        <a class="dropdown-item" href="crear-llaves.jsp">Crear Llaves</a>  
                                    </c:when>
                                </c:choose> 
                            </div>
                        <li class="nav-item">
                            <a class="nav-link" href="../index.jsp">Página Principal</a>
                        </li>
                    </ul>
                </div>
                <c:choose>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/index')}">
                        <a href="../login?op=logout" style="color: yellow;">Cerrar sesión</a>
                    </c:when>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/liga')}">
                        <a href="../login?op=logout" style="color: yellow;">Cerrar sesión</a>
                    </c:when>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'equipo')}">
                        <a href="../login?op=logout" style="color: yellow;">Cerrar sesión</a>
                    </c:when>
                    <c:when test="${fn:contains (pageContext.request.requestURL,'administrador/competicion')}">
                            <a href="../login?op=logout" style="color: yellow;">Cerrar sesión</a>
                    </c:when>
                </c:choose>

            </nav>
        </div>
    </body>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/tilt.jquery.js" type="text/javascript"></script>
</html>
