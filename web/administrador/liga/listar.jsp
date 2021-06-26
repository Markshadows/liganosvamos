<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../js/all.min.js" type="text/javascript"></script>
        <title>Listar ligas</title>

    </head>
    <body>
        <jsp:include page="../menu2.jsp"></jsp:include>
                <jsp:include page="../../procesoAdministrador" />
            <div class="container-fluid text-white">
                <div class="row">
                    <jsp:include page="../../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <h2>Lista de ligas</h2>
                        <table class="table table-bordered table-striped">
                            <tr>
                            <thead class="thead-light">
                            <th>NOMBRE</th>
                            <th>JUEGO</th>
                            <th>INICIO</th>
                            <th>FIN</th>
                            <th>ESTADO</th>
                            </thead>
                            </tr>
                        <c:forEach var="item" items="${ligas}">
                            <tr>
                                <td> ${item.nombre}</td>
                                <td> ${item.juego}</td>
                                <td> <fmt:formatDate value="${item.FInicio}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></td>
                                <td><fmt:formatDate value="${item.FFin}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></td><c:choose>
                                    <c:when test="${item.estado == 'Inactivo'}">
                                        <td>
                                            <p style="color: red">${item.estado}</p>
                                        </td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>
                                            <p style="color: #428bca">${item.estado}</p>
                                        </td>
                                    </c:otherwise>
                                </c:choose>

                            </tr></c:forEach>
                        </table>
                    <jsp:include page="../../contenidoCentral.jsp"></jsp:include>
                    </div>
                    <jsp:include page="../../contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="../../footer.jsp"></jsp:include>
    </body>
    <script src="../../js/holder.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
</html>
