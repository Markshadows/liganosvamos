<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/all.min.js" type="text/javascript"></script>
        <script src="../js/holder.js" type="text/javascript"></script>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <jsp:include page="../head/heads.jsp"></jsp:include>
            <title>SuperUsuarioModificar</title>
        </head>
        <body>
        <jsp:include page="../procesoAdministrador"></jsp:include>
        <c:choose>
            <c:when test="${usuario.tipo.id == 2}">
                <jsp:include page="../administrador/menu.jsp"></jsp:include>
            </c:when>
            <c:otherwise>
                <jsp:include page="../menu.jsp"></jsp:include>
            </c:otherwise>
        </c:choose>
        <div class="container-fluid text-white">
            <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5 text-center">
                        <form action="../procesoAdministrador" method="POST">
                            <h2>Formulario de modificación de equipo</h2>
                        <c:if test="${equipoPreActualizacion == null}">
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Equipo</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="equiposCbo" class="custom-select">
                                            <option selected value="0">Seleccionar</option>
                                            <c:forEach var="item" items="${listaEquipo}">                          
                                                <option value="${item.id}">${item.nombre}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-warning" value="BuscarEquipo" name="btnAccion">Buscar</button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${equipoPreActualizacion != null}">
                            <div class="form-group">
                                <label for="text">Nombre</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" disabled="true" value="${equipoPreActualizacion.nombre}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Estado</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="${equipoPreActualizacion.usuario.estado}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Nombre Nuevo</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtNombre">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Estado</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="cboEstado" class="custom-select">
                                            <option selected value="a">Seleccionar</option>
                                            <option value="Activo">Activo</option>
                                            <option value="Inactivo">Inactivo</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-warning" value="ModificarEquipo" name="btnAccion">Modificar</button>
                                    </div>
                                </div>
                            </div>
                            <jsp:include page="../mensajes/mensaje.jsp"></jsp:include>
                            </form>
                    </c:if>
                    <jsp:include page="../contenidoCentral.jsp"></jsp:include>
                    </div>
                <jsp:include page="../contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="../footer.jsp"></jsp:include>
    </body>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/tilt.jquery.js" type="text/javascript"></script>
</html>
