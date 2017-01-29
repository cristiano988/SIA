<%-- 
    Document   : forcasxoportunidades
    Created on : 16/mai/2016, 23:11:06
    Author     : crist
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.models.data.ItemInterno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

        <script src="js/myscripts.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
        <script src="js/bootstrap.min.js"></script>
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


<!--=======Content=================================-->
<%
    List<ItemInterno> forcasInternas;
    List<ItemInterno> oportunidadesExternas;
    List<ItemInterno> fraquezasInternas;
    List<ItemInterno> ameacasExternas;
    forcasInternas = (ArrayList<ItemInterno>)session.getAttribute("forcasInternas");
    oportunidadesExternas = (ArrayList<ItemInterno>)session.getAttribute("oportunidadesExternas");
    fraquezasInternas = (ArrayList<ItemInterno>)session.getAttribute("fraquezasInternas");
    ameacasExternas = (ArrayList<ItemInterno>)session.getAttribute("ameacasExternas");
%>

<form action="processc" method="post">
    <div class="container">
        <div class="row">
            <h2>Forças vs Oportunidades</h2><br>
        </div>
        <table class="table">
            <tr>
                <td><strong>Forças</strong></td><td><strong>Oportunidades</strong></td><td><strong>Como a oportunidade pode potenciar a força</strong></td><td><strong>Status</strong></td>
            </tr>
            <%
            for(ItemInterno item : forcasInternas)
            {
                %>
                <tr>
                            <td><%=item.getItem()%></td><td>
                            <select id="oportunidades1<%=item.getItem()%>" name="oportunidades1<%=item.getItem()%>" class="form-control">
                        <%
                            for(ItemInterno oportunidade : oportunidadesExternas)
                            {
                                %>
                                <option><%=oportunidade.getItem() %></option>
                                <%
                            }
                        %>
                        </select></td>
                        <td><textarea style="resize: none;" rows="2"  cols="30" name="forcaxoptext<%=item.getItem()%>" id="forcaxoptext<%=item.getItem()%>" class="form-control"></textarea></td>
                                <td><select name="forcaxopselect<%=item.getItem()%>" id="forcaxopselect<%=item.getItem()%>" class="form-control">
                                        <option>Nao Iniciado</option>
                                        <option>Atrasado</option>
                                        <option>Em Andamento</option>
                                        <option>Concluido</option>
                            </select></td>
                </tr>
                <%
            }
            %>
        </table>
    </div>
    
        <div class="container">
            <div class="row">
                <h2>Forças vs Ameaças</h2>
            </div>
            <table class="table">
                <tr>
                    <td><strong>Forças</strong></td><td><strong>Ameaças</strong></td><td><strong>Como Minimizar a Ameaça</strong></td><td><strong>Status</strong></td>
                </tr>
                <%
                for(ItemInterno item : forcasInternas)
                {
                    %>
                    <tr>
                        <td><%=item.getItem()%></td>
                        <td>
                            <select id="ameacas1<%=item.getItem()%>" name="ameacas1<%=item.getItem()%>" class="form-control">
                                <%
                                    for(ItemInterno ameaca : ameacasExternas)
                                    {
                                        %>
                                        <option><%=ameaca.getItem()%></option>
                                        <%
                                    }
                                %>
                            </select>
                        </td>
                        <td><textarea style="resize: none;" rows="2"  cols="30" name="forcaxameacatext<%=item.getItem()%>" id="forcaxameacatext<%=item.getItem()%>" class="form-control"></textarea></td>
                        <td>
                            <select name="forcaxameacaselect<%=item.getItem()%>" id="forcaxameacaselect<%=item.getItem()%>" class="form-control">
                                        <option>Nao Iniciado</option>
                                        <option>Atrasado</option>
                                        <option>Em Andamento</option>
                                        <option>Concluido</option>
                            </select>
                        </td>
                    </tr>
                    <%
                }
            %>
            </table>
        </div>
    
            <div class="container">
                <div class="row">
                    <h2>Fraquezas vs Oportunidades</h2>
                </div>
                <table class="table">
                    <tr>
                        <td><strong>Fraquezas</strong></td><td><strong>Oportunidades</strong></td><td><strong>Como diminuir fraquezas com oportunidades</strong></td><td><strong>Status</strong></td>
                    </tr>
                    <%
                    for(ItemInterno fraqueza : fraquezasInternas)
                    {
                        %>
                        <tr>
                            <td><%= fraqueza.getItem() %></td>
                            <td>
                                <select id="oportunidades2<%=fraqueza.getItem()%>" name="oportunidades2<%=fraqueza.getItem()%>" class="form-control">
                                <%
                                       for(ItemInterno oportunidade: oportunidadesExternas)
                                       {
                                           %>
                                           <option><%=oportunidade.getItem()%></option>
                                           <%
                                       }
                                %>
                                </select>
                            </td>
                            <td><textarea class="form-control" style="resize: none;" rows="2"  cols="30" name="fraquezaxoportunidadetext<%=fraqueza.getItem()%>" id="fraquezaxoportunidadetext<%=fraqueza.getItem()%>" ></textarea></td>
                            <td>
                            <select class="form-control" name="fraquezaxoportunidadeselect<%=fraqueza.getItem()%>" id="fraquezaxoportunidadeselect<%=fraqueza.getItem()%>">
                                        <option>Nao Iniciado</option>
                                        <option>Atrasado</option>
                                        <option>Em Andamento</option>
                                        <option>Concluido</option>
                            </select>
                        </td>
                        </tr>
                        <%
                    }
                %>
                </table>
            </div>
            
                <div class="container">
                    <div class="row">
                        <h2>Fraquezas vs Ameaças</h2>
                    </div>
                
                <table class="table">
                    <tr>
                        <td><strong>Fraquezas</strong></td><td><strong>Ameaças</strong></td><td><strong>Estratégia</strong></td><td><strong>Status</strong></td>
                    </tr>
                    <%
                        for(ItemInterno fraqueza : fraquezasInternas)
                        {
                            %>
                            <tr>
                                <td><%=fraqueza.getItem()%></td>
                                <td>
                                    <select name="ameacas2<%=fraqueza.getItem()%>" id="ameacas2<%=fraqueza.getItem()%>" class="form-control"> 
                                        <%
                                            for(ItemInterno ameaca : ameacasExternas)
                                            {
                                                %>
                                                <option><%=ameaca.getItem()%></option>
                                                <%
                                            }
                                        %>
                                    </select>
                                </td>
                                <td><textarea class="form-control" style="resize: none;" rows="2"  cols="30" name="fraquezaxameacatext<%=fraqueza.getItem()%>" id="fraquezaxameacatext<%=fraqueza.getItem()%>" ></textarea></td>
                                <td>
                                <select name="fraquezaxameacaselect<%=fraqueza.getItem()%>" id="fraquezaxameacaselect<%=fraqueza.getItem()%>" class="form-control">
                                        <option>Nao Iniciado</option>
                                        <option>Atrasado</option>
                                        <option>Em Andamento</option>
                                        <option>Concluido</option>
                                </select>
                                </td>                
                            </tr>
                            <%
                        }
                    %>
                </table>
        </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-1">
                            <a href="matriz" class="btn btn-danger" role="button">Voltar</a>
                        </div>
                        <div class="col-md-10">
                            
                        </div>
                        <div class="col-md-1">
                            <input class="btn btn-success" type="submit" value="Continnuar">
                        </div>
                    </div>
                </div>
</form>
<br>
<!--=======Content=================================-->


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
