<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SuperUsuarioAgregar</title>
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
    <style>
        .pcuartos{
            margin-top: 100px;
        }
        .psemi{
            margin-top: 310px;
        }
        .psemib{
            margin-top: 630px;
        }
        .pfinal{
            margin-top: 550px;
        }
        .p1{
            color:#5bc0de;
        }
        .match-top4a{
            margin-top: 10px;
            margin-bottom: 230px;
        }
        .match-top4b{
            margin-top: 140px;
            margin-bottom: 220px;
        }
        .match-top4c{
            margin-top: 130px;
            margin-bottom: 250px;
        }
        .match-top4d{
            margin-top: 140px;
            margin-bottom: 230px;
        }
        .match-top2a{
            margin-top: 20px;
            margin-bottom: 230px;
        }
        .match-top2b{
            margin-top: 20px;
            margin-bottom: 230px;
        }
        .match-top1{
            margin-top: 20px;
        }

    </style>

    <body>

        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid  text-white text-center">
                <div class="row justify-content-center">
                    <div class="col-sm-12 mt-5">
                        <img src="img/equipos/torneo/logo-lol.png">
                        <div class="row">


                            <!--SECCION OCTAVOS-->


                            <!--GRUPO A-->
                            <div class="col-sm-3">
                            <c:forEach var="item" items="${octavos}">
                                <p class="ml-3">Octavos</p>
                                <div class="col-sm-9 border border-warning justify-content-center ml-5">

                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                        <img src="img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>
                                </div>
                            </c:forEach>
                            <!--------------------------------------------------------->


                            <!--GRUPO B-->

                            <!--GRUPO D-->

                        </div>


                        <!-- SECCION CUARTOS INICIO-->


                        <!-- GRUPO A-->
                        <div class="col-sm-3">
                            <c:forEach var="item" items="${cuartos}">
                                <p class="pcuartos ml-3">Cuartos</p>
                                <div class="col-sm-9 border border-warning justify-content-center ml-5 match-top4a">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                        <img src="img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>                                
                                </div>
                            </c:forEach>

                            <!-->
                            
                            
                            <!--GRUPO B-->

                        </div>


                        <!-- SECCION CUARTOS FIN -->



                        <!-- SECCION SEMIFINAL INICIO -->
                        <!--GRUPO A-->
                        <div class="col-sm-3">
                            <c:forEach var="item" items="${semifinal}">
                                <p class="psemi ml-3">Semifinal</p>
                                <div class="col-sm-9 border border-warning justify-content-center ml-5 match-top2a">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                        <img src="img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>                                
                                </div>
                            </c:forEach>
                            <!--SECCION SEMIFINAL FIN-->

                        </div>

                        <!--SECCION FINAL INICIO-->
                        <div class="col-sm-3">
                            <c:forEach var="item" items="${final}">
                                <p class="pfinal ml-3">Final</p>
                                <div class="col-sm-9 border border-warning justify-content-center ml-5 match-top1">
                                    <p class="p1 mt-4"><fmt:formatDate value="${item.fecha}" pattern="dd 'de' MMMM 'del' YYYY 'a las' HH:mm" /></p>
                                    <div class="row justify-content-center">
                                        <img src="img/equipos/${item.ganador.src}" height="75" width="75">
                                        <p class="mt-3">v/s</p>
                                        <img src="img/equipos/${item.perdedor.src}" height="75" width="75">
                                    </div>
                                    <p class="p1 mt-2">${item.ganador.nombre} v/s ${item.perdedor.nombre}</p>                                
                                </div>
                            </c:forEach>
                            <div class="col-sm-3 mt-4 ml-4">
                                <a href="procesoWinner" class="btn btn-warning ml-5" role="button">Ver Ganador</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
