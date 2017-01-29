<%-- 
    Document   : testesboot
    Created on : 21/mai/2016, 10:56:21
    Author     : crist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bootstrap</title>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        
        <script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="views/common/header.jsp"/>
        
        <div class="container">
            <h3>Table</h3>
            <table class="table">
                <thead>
                    <th></th><th>Index1</th><th>Index2</th><th>Index3</th><th>Index4</th>
                </thead>
                <tbody>
                    <tr>
                    <td>Data1 </td><td>Data2 </td><td>Data3 </td><td>Data4 </td><td><select class="form-control" id="op1" name="op1">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            </select></td>
                    </tr>
                    <tr>
                    <td>Data1 </td><td>Data2 </td><td>Data3 </td><td>Data4 </td><td><select class="form-control" id="op2" name="op2">
                            <option>Option 1</option>
                            <option>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td></td><td></td><td></td><td></td><td><a class="btn btn-primary" role="button" href="processboot">Ok</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
