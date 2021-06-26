<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Premios</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid text-white text-center">
                <div class="row">
                <jsp:include page="contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6">
                                <p>1er lugar: regarga de 8550 RP por jugador</p>
                                <img src="img/rp.jpg" class="img-fluid" height="100" width="100">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6 mt-5">
                                <p>2do lugar: regarga de 4125 RP por jugador</p>
                                <img src="img/rp.jpg" class="img-fluid" height="100" width="100">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-6 mt-5">
                                <p>3er lugar: regarga de 2150 RP por jugador</p>
                                <img src="img/rp.jpg" class="img-fluid" height="100" width="100">
                            </div>
                        </div>
                    <jsp:include page="contenidoCentral.jsp"></jsp:include>
                    </div>
                <jsp:include page="contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
