<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <jsp:include page="../../procesoAdministrador"></jsp:include>
        <jsp:include page="../menu.jsp"></jsp:include>
            <div class="container-fluid bg-dark text-white">
                <form action="../../procesoAdministrador" method="POST">
                    <div class="row">
                        <div class="col-sm-12 mt-5">

                            <div class="row">
                                                            <div class="col-sm-2">
                                
                            </div>
                                <div class="col-sm-3">
                                    <select name="cboLiga" class="custom-select">
                                        <option selected>Seleccionar</option>
                                    <c:forEach var="item" items="${ligasActivas}">                          
                                        <option value="${item.id}">${item.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <input type="datetime-local"class="form-control"  name="txtFecha1">
                            </div>
                            
                            <div class="col-sm-3 d-flex justify-content-center">
                                <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarCuartos">Agregar a Cuartos</button>
                            </div>

                        </div>
                            
                        <div class="row mt-5 justify-content-center">
                            
                            
                            <c:forEach var="item" items="${octavos}">
                                <div class="col-sm-3 border border-warning justify-content-center ml-3 mt-3">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="../../img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                       <img src="../../img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2 text-center">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>
                                    <select name="cboEquipo" class="custom-select mb-3">
                                        <option selected>Seleccionar</option>
                                        <option value="${item.ganador.id}">${item.ganador.nombre}</option>
                                        <option value="${item.perdedor.id}">${item.perdedor.nombre}</option>
                                </select>
                                </div>
                                
                            </c:forEach>
                            <!--------------------------------------------------------->


                            <!--GRUPO B-->

                            <!--GRUPO D-->

                        
                        </div>
                        <div style="height: 150px; background-color: #6c757d; margin-top: 50px">
                        <jsp:include page="../../mensajes/mensaje.jsp"></jsp:include>
                        </div>

                        <div class="row mt-5">
                                                    <div class="col-sm-1">
                            
                        </div>
                            <div class="col-sm-3 d-flex justify-content-center">
                                <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarSemifinal">Agregar a Semifinal</button>
                            </div>
                            <div class="col-sm-3">
                                <select name="cbo2Liga" class="custom-select">
                                    <option selected>Seleccionar</option>
                                    <c:forEach var="item" items="${ligasActivas}">                          
                                        <option value="${item.id}">${item.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <input type="datetime-local"class="form-control"  name="txtFecha2">
                            </div>
                        </div>
                        <div class="row mt-3 justify-content-center">
                            <c:forEach var="item" items="${cuartos}">
                                <div class="col-sm-3 border border-warning justify-content-center ml-3 mt-3">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="../../img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                       <img src="../../img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2 text-center">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>
                                    <select name="cboEquipoS" class="custom-select mb-3">
                                        <option selected>Seleccionar</option>
                                        <option value="${item.ganador.id}">${item.ganador.nombre}</option>
                                        <option value="${item.perdedor.id}">${item.perdedor.nombre}</option>
                                </select>
                                </div>
                                
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div style="height: 150px; background-color: #6c757d; margin-top: 50px">

                </div>
                <div class="row mt-5">
                    <div class="col-sm-1">
                        
                    </div>
                    <div class="col-sm-3 d-flex justify-content-center">
                        <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarFinal">Agregar a Final</button>
                    </div>
                    <div class="col-sm-3">
                        <select name="cbo3Liga" class="custom-select">
                            <option selected>Seleccionar</option>
                            <c:forEach var="item" items="${ligasActivas}">                          
                                <option value="${item.id}">${item.nombre}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <input type="datetime-local"class="form-control" name="txtFecha3">
                    </div>
                </div>
                <div class="row mt-3 justify-content-center ml-5">
                    <c:forEach var="item" items="${semifinal}">
                        <div class="col-sm-1"></div>
                                <div class="col-sm-3 border border-warning justify-content-center mt-3">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="../../img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                       <img src="../../img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2 text-center">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>
                                    <select name="cboEquipoF" class="custom-select mb-3">
                                        <option selected>Seleccionar</option>
                                        <option value="${item.ganador.id}">${item.ganador.nombre}</option>
                                        <option value="${item.perdedor.id}">${item.perdedor.nombre}</option>
                                </select>
                                </div>
                                
                            </c:forEach>
                    <div class="col-sm-3"></div>
                </div>
            </form>
            <jsp:include page="../../footer.jsp"></jsp:include>
    </body>
    <script src="../../js/holder.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
</html>
