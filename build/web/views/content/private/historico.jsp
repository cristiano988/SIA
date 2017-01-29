<%-- 
    Document   : historico
    Created on : 14/mai/2016, 12:04:24
    Author     : crist
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.models.data.Tecnica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Historico</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

        <script src="js/myscripts.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
	</head>
    <body>
<!--==============================header=================================-->
<jsp:include page="/views/common/header.jsp" />
<!--==============================header=================================-->

<!--==============================Content=================================-->
<%
    List<Tecnica> forcasxAmeacas = (ArrayList<Tecnica>)session.getAttribute("forcasxAmeacas");
    List<Tecnica> forcasxOportunidades = (ArrayList<Tecnica>)session.getAttribute("forcasxOportunidades");
    List<Tecnica> fraquezasxAmeacas = (ArrayList<Tecnica>)session.getAttribute("fraquezasxAmeacas");
    List<Tecnica> fraquezasxOportunidades = (ArrayList<Tecnica>)session.getAttribute("fraquezasxOportunidades");
%>

<h3>Historico</h3>

<div class="container">
    <table class="table">
    <div class="row">
        <div class="col-md-12">
            <h4>Forcas x Ameacas</h4>
        </div>
    </div>
        <%
            for(Tecnica tecnica : forcasxAmeacas)
            {
                %>
                <div class="hist">
                    <h5><a href=""><%=tecnica.getItem1()%></a></h5>
                </div>
                <%
            }
        %>

    <h4>Forcas x Oportunidades</h4>

        <%
            for(Tecnica tecnica : forcasxOportunidades)
            {
                %>
                <div class="hist">
                    <h5><a href=""><%=tecnica.getItem1()%></a></h5>
                </div>
                <%
            }
        %>

    <h4>Fraquezas x Ameacas</h4>

        <%
            for(Tecnica tecnica : fraquezasxAmeacas)
            {
                %>
                <div class="hist">
                    <h5><a href=""><%=tecnica.getItem1()%></a></h5>
                </div>
                <%
            }
        %>

    
    <h4>Fraquezas x Oportunidades</h4>

        <%
            for(Tecnica tecnica : fraquezasxOportunidades)
            {
                %>
                <div class="hist">
                    <h5><a href=""><%=tecnica.getItem1()%></a></h5>
                </div>
                <%
            }
        %>
        </table>
</div>
<!--==============================Content=================================-->

<!--=======footer=================================-->
<div id="content">
<jsp:include page="/views/common/footer.jsp"/>
</div>
<!--=======footer=================================-->

<script>
	jQuery(function(){
		jQuery('#camera_wrap').camera({
			height: '34.58333333333333%',
			thumbnails: false,
			pagination: true,
			fx: 'simpleFade',
			loader: 'none',
			hover: false,
			navigation: false,
			playPause: false,
			minHeight: "139px",
		});
	});
</script>
<script>
	$(document).ready(function() {
		$(".owl-carousel").owlCarousel({
			navigation: true,
			pagination: false,
			items : 3,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [979,3],
			itemsTablet: [750,1],
			itemsMobile : [479,1],
			navigationText: false
		});
	});
</script>
<script>
	$(document).ready(function() { 
			if ($('html').hasClass('desktop')) {
				$.stellar({
					horizontalScrolling: false,
					verticalOffset: 20,
					resposive: true,
					hideDistantElements: true,
				});
			}
		});
</script>
    </body>
</html>
