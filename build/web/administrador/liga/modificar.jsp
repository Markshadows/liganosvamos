<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../js/all.min.js" type="text/javascript"></script>
        <script src="../../js/holder.js" type="text/javascript"></script>
        <script src="../../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../../js/jquery.validate.min.js" type="text/javascript"></script>
            <title>SuperUsuarioModificar</title>
        </head>
        <body>
        <jsp:include page="../menu2.jsp"></jsp:include>
        <jsp:include page="../../procesoAdministrador" />
        <div class="container-fluid text-white">
            <div class="row">
                <jsp:include page="../../contenidoIzquierda.jsp"></jsp:include>
                <div class="col-sm-6 mt-5 text-center">
                    <form action="../../procesoAdministrador" method="POST">
                        <h2>Formulario de modificación de liga</h2>
                        <c:if test="${ligaPreActualizacion == null}">

                            <div class="form-group">
                                <label for="text">Liga</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="cboLigas" class="custom-select">
                                            <option selected value="0">Seleccionar</option>
                                            <c:forEach var="item" items="${ligas}">                          
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
                                        <button type="submit" class="btn btn-warning" value="Buscar" name="btnAccion">Buscar</button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${ligaPreActualizacion != null}">
                            <div class="form-group">
                                <label for="text">Nombre</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="${ligaPreActualizacion.nombre}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Juego</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="${ligaPreActualizacion.juego}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de inicio</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ligaPreActualizacion.FInicio}"/>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de término</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ligaPreActualizacion.FFin}"/>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Estado</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" disabled="true" value="${ligaPreActualizacion.estado}">
                                    </div>
                                </div>
                            </div>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Nombre</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text"class="form-control" name="txtNombre">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Juego</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="cboJuego" class="custom-select">
                                            <option selected>Seleccionar</option>
                                            <option value="League of Legends">League of Legends</option>
                                            <option value="Counter Strike">Counter Strike</option>
                                            <option value="Fortnite">Fortnite</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de inicio</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="datetime-local"class="form-control" name="txtFechaI">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de término</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="datetime-local"class="form-control" name="txtFechaF">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Estado</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="cboEstado" class="custom-select">
                                            <option selected>Seleccionar</option>
                                            <option value="Activo">Activo</option>
                                            <option value="Inactivo">Inactivo</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-3">
                                        <button type="submit" class="btn btn-primary" value="Modificar" name="btnAccion">Modificar</button>
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="reset" class="btn btn-info">Limpiar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </c:if>
                    <jsp:include page="../../mensajes/mensaje.jsp"></jsp:include>
                    <jsp:include page="../../contenidoCentral.jsp"></jsp:include>
                    </div>
                    <jsp:include page="../../contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="../../footer.jsp"></jsp:include>
    </body>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../..js/tilt.jquery.js" type="text/javascript"></script>
</html>
