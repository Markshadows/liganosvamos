<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/all.min.js" type="text/javascript"></script>
        <style>
            .table td {
   text-align: center;   
}
table th {
   text-align: center;   
}
        </style>
        <title>Detalle Equipo</title>
    </head>
    <body>
        <jsp:include page="../procesoAdministrador" />
        <c:choose>
            <c:when test="${usuario.tipo.id == 2}">
                <jsp:include page="../administrador/menu.jsp"></jsp:include>
                    <div class="container-fluid text-white">
                        <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-8 mt-5">
                                <h2 class="text-center">Detalle del equipo</h2>
                                <table class="table table-bordered table-striped">
                                    <tr>
                                    <thead class="thead-light">
                                    <th>NOMBRE</th>
                                    <th>JUGADORES</th>
                                    <th>LIGA</th>
                                    <th>PRÓXIMA RONDA</th>
                                    <th>ESTADO</th>
                                    </tr>
                                <c:set var="count" value="0" scope="page" />
                                <c:forEach var="item" items="${listaEquipo}">
                                    <tr>
                                        <td> <img src="../img/equipos/${item.src}" height="75" width="75">
                                        ${item.nombre}</td>
                                        <td> <c:forEach var="item2" items="${item.jugadorList.toArray()}"> <c:set var="count" value="${count + 1}" scope="page"/> <c:if test="${count == 8}">
                                                    <c:set var="count" value="1" scope="page" />
                                                </c:if>${count}- ${item2.nombreApp} <br></c:forEach></td>
                                        <td> ${item.liga.nombre}</td>
                                        <td> ${item.rondaActual}</td>
                                        <c:choose>
                                            <c:when test="${item.usuario.estado == 'Inactivo'}">
                                                <td>
                                                    <p style="color: red">${item.usuario.estado}</p>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <td>
                                                    <p style="color: #428bca">${item.usuario.estado}</p>
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                    </tr>

                                </c:forEach>
                            </table>
                        </div>
                        <div class="col-sm-2">

                        </div>
                    </div>
                    <jsp:include page="../footer.jsp"></jsp:include>
                    </div>
            </c:when>
            <c:otherwise>
                <jsp:include page="menu.jsp"></jsp:include>
                    <div class="container-fluid bg-dark text-white">
                        <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-8 mt-5">
                                <h2 class="text-center">Detalle del equipo</h2>
                                <table class="table table-bordered table-striped">
                                    <tr>
                                    <thead class="thead-light">
                                    <th>NOMBRE</th>
                                    <th>JUGADORES</th>
                                    <th>LIGA</th>
                                    <th>PRÓXIMA RONDA</th>
                                    <th>ESTADO</th>
                                    </tr>
                                <c:set var="count2" value="0" scope="page" />
                                    <tr>
                                        <td> <img src="../img/equipos/${miEquipo.src}" height="75" width="75">
                                        ${miEquipo.nombre}</td>
                                        <td> <c:forEach var="item3" items="${miEquipo.jugadorList.toArray()}">
                                                    
                                                ${item3.nombreApp} <br></c:forEach></td>
                                        <td> ${miEquipo.liga.nombre}</td>
                                        <td> ${miEquipo.rondaActual}</td>
                                        <c:choose>
                                            <c:when test="${miEquipo.usuario.estado == 'Inactivo'}">
                                                <td>
                                                    <p style="color: red">${miEquipo.usuario.estado}</p>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <td>
                                                    <p style="color: #428bca">${miEquipo.usuario.estado}</p>
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                    </tr>

                            </table>
                        </div>
                        <div class="col-sm-2">

                        </div>
                    </div>
                    <jsp:include page="../footer.jsp"></jsp:include>
                    </div>
            </c:otherwise>
        </c:choose>
    </body>
    <script src="../js/holder.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</html>
