<%-- 
    Document   : matriz
    Created on : 15/mai/2016, 12:39:40
    Author     : crist
--%>

<%@page import="com.models.data.ItemInterno"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/mystyle.css"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

        <script src="js/myscripts.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
        <scipt type="text/javascript" src="js/bootstrap.min.js"></scipt>
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

<!--==============================content=================================-->

<h3>Matriz Swot</h3>

<div class="container">
    <h4>Fatores Internos</h4>
<table class="table">
    <thead>
    <div class="row">
        <div class="col-md-3">
            <th><strong>Classificação</strong></th>
        </div>
        <div class="col-md-3">
            <th><strong>Forcas</strong></th>
        </div>
        <div class="col-md-3">
            <th><strong>Fraquezas</strong></th>
        </div>
        <div class="col-md-3">
            <th><strong>Classificação</strong></th>
        </div>
    </div>
    
    </thead>
    <tbody>
<%
    ArrayList<ItemInterno> forcasInternas = (ArrayList<ItemInterno>)session.getAttribute("forcasInternas");
    ArrayList<ItemInterno> fraquezasInternas = (ArrayList<ItemInterno>)session.getAttribute("fraquezasInternas");
    ArrayList<ItemInterno> oportunidadesExternas = (ArrayList<ItemInterno>)session.getAttribute("oportunidadesExternas");
    ArrayList<ItemInterno> ameacasExternas = (ArrayList<ItemInterno>)session.getAttribute("ameacasExternas");
    
    int max;
    if(forcasInternas.size() > fraquezasInternas.size()){
        max = forcasInternas.size();
    }else{
        max = fraquezasInternas.size();
    }
    %>
 
    <%
    for(int i = 0; i < max; i++)
    {
        if(forcasInternas.size() > i)
        {
            %>
            <tr><td class="oportunidade"><%= forcasInternas.get(i).getPontuacao() %></td><td class="oportunidade"><%=forcasInternas.get(i).getItem()%></td>
            <%
        }else{
            %>
            <tr><td class="oportunidade"></td>
            <%
        }
        
        if(fraquezasInternas.size() > i)
        {
            %>
            <td class="ameaca"><%=fraquezasInternas.get(i).getItem()%></td><td class="ameaca"><%= forcasInternas.get(i).getPontuacao() %></td></tr>
            <%
        }else{
            %>
            <td class="ameaca"></td></tr>
            <%
        }
    }
%>
    </tbody>
</table>
</div>

    <br>
    
<div class="container">
<h4>Fatores Externos</h4>

<table class="table">
    <thead>
    <th><strong>Classificação</strong></th><th><strong>Oportunidades</strong></th><th><strong>Ameaças</strong></th><th><strong>Classificação</strong></th>
    </thead>
    <tbody>
        <%
        if(oportunidadesExternas.size() > ameacasExternas.size()){
        max = oportunidadesExternas.size();
        }else{
            max = ameacasExternas.size();
        }
        
        for(int i = 0; i < max ; i++)
        {
            if(oportunidadesExternas.size() > i)
            {
                %>
                <tr><td class="oportunidade"><%= oportunidadesExternas.get(i).getPontuacao() %></td><td class="oportunidade"><%=oportunidadesExternas.get(i).getItem()%></td>
                <%
            }else{
                %>
                <tr><td class="oportunidade"></td>
                <%
            }
            if(ameacasExternas.size() > i)
            {
            %>
            <td class="ameaca"><%=ameacasExternas.get(i).getItem()%></td><td class="ameaca"><%= oportunidadesExternas.get(i).getPontuacao() %></td></tr>
            <%
            }else{
                %>
            <td class="ameaca"></td></tr>
                <%
            }
        }
        %>
    </tbody>
</table>
</div>
    <div class="container">
        <div class="row">
            <div class="col-md-1">
                <a href="novaanalise" class="btn btn-danger">Voltar</a>
            </div>
            <div class="col-md-9"></div>
            <div class="col-md-1">
                <a href="forcasxoportunidades" class="btn btn-success">Continuar</a>
            </div>
        </div>
    </div>
    
    <br>
<!--==============================content=================================-->

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
