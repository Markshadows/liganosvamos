<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid">
                <div class="container-fluid text-primary">
                    <div class="row">
                        <div class="col-sm-12 mt-5 mb-5">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                                <!-- Indicators -->
                                <ul class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ul>

                                <!-- The slideshow -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="../img/equipos/torneo/lf1.jpg"  class ="img-fluid">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../img/equipos/torneo/lf2.jpg" class="img-fluid">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="../img/equipos/torneo/lf3.jpg" class="img-fluid">
                                    </div>
                                </div>

                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="../footer.jsp"></jsp:include>
    </body>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/all.min.js" type="text/javascript"></script>
    <script src="../js/holder.js" type="text/javascript"></script>
</html>
