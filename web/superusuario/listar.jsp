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
        <title>SuperUsuarioListar</title>
        <jsp:include page="../head/heads2.jsp"></jsp:include>

    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <jsp:include page="/procesoSuperUsuario" />
        <div class="container-fluid text-white">
            <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                <div class="col-sm-6 mt-5">
                    <h2>Lista de administradores</h2>
                    <table class="table table-dark table-hover text-center">
                        <tr>
                        <thead class="thead-light">
                        <th>NOMBRE</th>
                        <th>USUARIO</th>
                        <th>CORREO</th>
                        <th>ESTADO</th>
                        </thead>
                        </tr>
                        <c:forEach var="item" items="${administradores}">
                            <tr>
                                <td> ${item.nombreApellido}</td>
                                <td> ${item.usuario.nombre}</td>
                                <td> ${item.correo}</td><c:choose>
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
                            </tr></c:forEach>
                        </table>
                    <jsp:include page="../mensajes/mensaje.jsp"></jsp:include>
                    <jsp:include page="../contenidoCentral.jsp"></jsp:include>
                    </div>
                    <jsp:include page="../contenidoDerecha.jsp"></jsp:include>
                </div>
            <jsp:include page="../footer.jsp"></jsp:include>
        </div>
    </body>
    <script src="../js/holder.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</html>
