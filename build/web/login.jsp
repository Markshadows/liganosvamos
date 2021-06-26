<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head/heads.jsp"></jsp:include>
            <title>Login</title>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid text-white text-center">
                <div class="row">
                <jsp:include page="contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <form action="procesoUsuario" method="POST">
                            <h2>Formulario de ingreso</h2>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtNombre" placeholder="nombre de equipo o personal" required="true">
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="password">Contraseña</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control" name="txtPassword" required="true">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-warning">Iniciar Sesión</button>
                        </form>

                    <%-- mensajes --%>
                    <c:if test="${!empty mensajes}">
                        <div class="alert alert-primary" role="alert">
                            <ul>
                                <c:forEach items="${mensajes}" var="mensaje">
                                    <li>${mensaje}</li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </c:if>

                    <%-- errores --%>
                    <c:if test="${!empty errores}">
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="alert alert-danger col-sm-6 mt-4">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <ul>
                                    <c:forEach items="${errores}" var="error">
                                        <li>${error}</li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </c:if>
                    <!--<c:choose>
                        <c:when test="${mensaje == 'Error' && !empty mensaje}">
                            <div class="row">
                                <div class="col-sm-3"></div>
                            <div class="alert alert-danger col-sm-6 mt-4">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <strong>Error!</strong> Usuario o clave incorrectas.
                            </div>
                            </div>
                        </c:when>
                    </c:choose> !-->
                    <jsp:include page="contenidoCentral.jsp"></jsp:include>
                    </div>
                    <jsp:include page="contenido2.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
