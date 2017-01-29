<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Services</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/contact-form.css">
        <link rel="stylesheet" href="css/personal.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/script.js"></script>
	<script src='//maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false'></script>
	<script src="js/wow.js"></script>
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
        <jsp:include page="views/common/header.jsp"/>
        <!--==============================header=================================-->
        
        <!--=======content================================-->
        <section id="content" class="myformat">
                <div class="full-width-container block-1">
                        <div class="container">
                                <div class="row">
                                        <div class="grid_12">
                                                <div class="content_map">
                                                        <div class="google-map-api"> 
                                                                <div id="map-canvas" class="gmap"></div> 
                                                        </div> 
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
                <div class="full-width-container block-2">
                        <div class="container">
                                <div class="row">
                                        <div class="grid_5">
                                            <form id="contact-form" method="POST" action="signin">
                                                        <div class="contact-form-loader"></div>
                                                                <header>
                                                                        <h2><span>Login: </span></h2>
                                                                </header>
                                                                <fieldset>
                                                                                <label class="email">
                                                                                        <span class="text">E-mail:</span>
                                                                                        <input type="text" name="email" placeholder="" value="" data-constraints="@Required @Email" />
                                                                                        <span class="empty-message">*This field is required.</span>
                                                                                        <span class="error-message">*This is not a valid email.</span>
                                                                                </label>
                                                                                <label class="name">
                                                                                    <span class="text">Password:</span>
                                                                                    <input type="password" name="password"  placeholder="" value="" data-constraints="@Required" />
                                                                                    <span class="empty-message">*This field is required.</span>
                                                                                </label>
                                                                    <div class="cont_btn">
                                                                        <input type="submit" class="mybtn" value="Login"/>
                                                                    </div>
                                                                    <label class="name myformat">
                                                                        <span class="text">Esqueceu-se da palavra-passe? clique <a href="#">aqui.</a></span>
                                                                    </label>
                                                                </fieldset> 
                                                </form>
                                        </div>
                                        <div class="grid_6 preffix_1">
                                            <div>
                                                    <hader>
                                                            <h4><span><a href="register">Ainda não tem uma conta?</a></span></h4>
                                                            <h4><span><a href="register">Registe-se grátis</a></span></h4>
                                                    </hader>
                                            </div>
                                        </div>
                        </div>
                </div>
        </section>
        <!--=======content================================-->
        
        <!--=======footer=================================-->
        <jsp:include page="views/common/footer.jsp" />
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
