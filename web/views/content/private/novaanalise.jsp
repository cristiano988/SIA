<%-- 
    Document   : novaanalise
    Created on : 14/mai/2016, 12:04:09
    Author     : crist
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.models.data.ItemInterno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
	<title>Nova Analise</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
        <script src="js/myscripts.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.css"></script>
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
        
        
        <div class="fatores-internos">
            <div class="container">
                <div class="row">
                    <div class="col-md-12"><h3>Fatores Internos</h3></div>
                </div><br>
                <% 
                    ArrayList<ItemInterno> itemsInternos = (ArrayList<ItemInterno>)session.getAttribute("itemsInternos");
                    if(itemsInternos != null && !itemsInternos.isEmpty())
                    {
                        %>
                        <form  action="eliminarfator" method="post">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th><strong> Item </strong></th> <th><strong> Classificação </strong></th><th><strong>Importância</strong></th><th><strong>Pontuação</strong></th>
                                </tr>
                            </thead>
                        <tbody>
                        <%
                        for(ItemInterno item : itemsInternos)
                        {
                            %>
                            <tr>
                                <td><%= item.getItem() %></td><td><%= item.getClassificacao() %></td><td><%= item.getImportancia() %></td><td><%= item.getPontuacao() %></td><td><input class="btn btn-default" style="margin-top:0px;" name="<%=item.getItem() %>" type="submit" value="Eliminar" /></td>
                            </tr>
                            <%
                        }
                        %>
                        </tbody>
                        </table>
                        </form>
                        <%
                    }
                
                %>
                
            </div>
                
            <div class="container">
                <div class="row">
                    <form id="submit-fator-interno" action="novoItemInterno" method="post">
                    <div class="col-md-4">
                        <input type="text" class="form-control"id="item" name="item" />
                    </div>
                    <div class="col-md-3">
                        <select id="classificacao" name="classificacao" class="form-control">
                            <option>Forca</option>
                            <option>Fraqueza</option>
                        </select>
                    </div>
                        <div class="col-md-3">
                            <select id="importancia" name="importancia" class="form-control">
                                <option>Totalmente sem importancia</option>
                                <option>Pouca Importancia</option>
                                <option>Importante</option>
                                <option>Muito Importante</option>
                                <option>Totalmente Importante</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <input class="btn btn-success" type="submit" value="Adicionar" style="margin-top: 0px;">
                        </div>
                </div>
                    </form>
            </div>
        </div>
                <br>
        <div class="fatores-externos">
            <div class="container">
                <div class="row">
                    <div class="col-md-12"><h3>Fatores Externos</h3></div>
                </div></br>
                    <% 
                        ArrayList<ItemInterno> itemsExternos = (ArrayList<ItemInterno>)session.getAttribute("itemsExternos");
                        if(itemsExternos != null && !itemsExternos.isEmpty())
                        {
                            %>
                            <form action="eliminarfator" method="post">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th><strong> Item </strong></th> <th><strong> Classificação </strong></th><th><strong>Importância</strong></th><th><strong>Pontuação</strong></th>
                                    </tr>
                                </thead>
                            <tbody>
                            <%
                            for(ItemInterno item : itemsExternos)
                            {
                                %>
                                <tr>
                                    <td><%= item.getItem() %></td><td><%= item.getClassificacao() %></td><td><%= item.getImportancia() %></td><td><%= item.getPontuacao() %></td><td><input class="btn btn-default" style="margin-top:0px" name="<%=item.getItem() %>" type="submit" value="Eliminar" /></td>
                                </tr>
                                <%
                            }
                            %>
                            </tbody>
                            </table>
                            </form>
                            <%
                        }
                
                    %>
                </div>
                <div class="container">
                    <div class="row">
                        <form id="submit-fator-externo" action="novoItemExterno" method="post">
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="itemExterno" name="itemExterno" />
                            </div>
                            <div class="col-md-3">
                                <select id="classificacaoExterna" class="form-control" name="classificacaoExterna">
                                    <option>Oportunidade</option>
                                    <option>Ameaca</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <select id="importanciaExterna" name="importanciaExterna" class="form-control">
                                    <option>Totalmente sem importancia</option>
                                    <option>Pouca Importancia</option>
                                    <option>Importante</option>
                                    <option>Muito Importante</option>
                                    <option>Totalmente Importante</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <input value="Adicionar" type="submit" class="btn btn-success" style="margin-top:0px;"/>  
                            </div>
                        </form>
                    </div>
                </div><br>
                <div class="container">
                    <div class="row">
                        <div class="col-md-10">
                            
                        </div>
                        <div class="col-md-2">
                            <form action="matriz" method="post">
                                <input type="submit" value="Concluido" class="btn btn-primary"/>
                            </form>
                        </div>
                    </div>
                </div><br>
        </div>
        
        
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
