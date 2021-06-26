<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LNV MARCO MELLA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/all.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/holder.js" type="text/javascript"></script>
        


    </head>
    <body>
        <div class="container-fluid text-primary">
            <jsp:include page="menu.jsp"></jsp:include>
                <div class="container-fluid mt-5">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="container">
                                <div id="carouselContent" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active text-center p-4">
                                            <p>League of Legends (también conocido por sus siglas LoL) es un videojuego de género multiplayer online battle arena (MOBA) y deporte electrónico desarrollado por Riot Games para Microsoft Windows y OS X. En un principio los servidores estaban alojados en la empresa GOA y hace poco se anunció su venta a la empresa china Tencent Holdings Limited.

                                                El juego fue diseñado para el sistema operativo Microsoft Windows y lanzaron una beta para OS X dejando al poco tiempo el proyecto de lado.</p>
                                        </div>
                                        <div class="carousel-item text-center p-4">

                                            <p>
                                                Esta beta ha sido mejorada por parte de usuarios del juego, haciendo posible jugar a una versión actualizada de League of Legends.

                                                En octubre de 2012, contaba con 70 millones de jugadores registrados. Para marzo de 2013 se registró un pico de 5 millones de jugadores conectados al mismo tiempo en todo el mundo. Es un juego de alta competitividad siendo uno de los juegos más populares de los deportes electrónicos (e-sports).

                                                El juego está inspirado en el popular mapa personalizado del Warcraft III, Defense of the Ancients: Allstars diseñado por Steve Guinsoo Feak el cual a su vez está basado en el escenario de StarCraft Aeon of Strife.
                                            </p>

                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselContent" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselContent" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div>
                                <a href="procesoFixture">
                                    <img class="img-fluid" src="img/lolmenu.png" data-tilt data-tilt-axis="x">
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div>
                                <a href="fortnite.jsp">
                                    <img class="img-fluid" src="img/fornitemenu.jpg" data-tilt data-tilt-axis="x">
                                </a>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div>
                                <a href="cs.jsp">
                                    <img class="img-fluid" src="img/csmenu.jpg" data-tilt data-tilt-axis="x">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="jumbotron jumbotron-fluid mt-3 bg-dark">
                    <div class="container">
                        <h1 class="display-4">Las mejores competiciones están aquí</h1>
                        <p class="lead">Regístrate y obtén un sinfín de beneficios.</p>
                    </div>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/tilt.jquery.js" type="text/javascript"></script>
</html>
