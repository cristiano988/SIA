<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registart</title>
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
	<script src="js/wow.js"></script>
        <script src="js/myscripts.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
    </head>
    <body class="index-4">
        
        <!--=======Header================================-->
        <jsp:include page="views/common/header.jsp"/>
        <!--=======Header================================-->
        
        <!--=======content================================-->

<section id="content">
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_5">
                                    <form id="contact-form" method="POST" action="signup">
						<div class="contact-form-loader"></div>
							<header>
								<h2><span>Registar</span></h2>
							</header>
							<fieldset>
									<label class="name">
										<span class="text">Nome:</span>
										<input id="name" type="text" name="name" placeholder="" value="" data-constraints="@Required @JustLetters" />
                                                                                <p class="myErrorMessage" id="nameMsg"></p>
									</label>
									<label class="email">
										<span class="text">E-mail:</span>
										<input id="email" type="text" name="email" placeholder="" value="" />
                                                                                <p class="myErrorMessage" id="emailMsg"></p>
									</label>
                                                                        <label class="name">
										<span class="text">Password</span>
										<input id="password" type="password" name="password" placeholder="" value="" data-constraints="@Required" />
                                                                                <p class="myErrorMessage" id="passwordMsg"></p>
									</label>
                                                                        <label class="name">
										<span class="text">Confirmar Password</span>
										<input id="confirmPassword" type="password" name="confirmPassword" placeholder="" value="" data-constraints="@Required" />
										<p class="myErrorMessage" id="confPasswordMsg"></p>
									</label>
								<div class="cont_btn">
                                                                        <div class="cont_btn">
                                                                            <input type="submit" class="mybtn" value="Registar"/>
                                                                        </div>
								</div>
						</fieldset> 
						<div class="modal fade response-message">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title">Modal title</h4>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
        <!--=======Content================================-->
        
        <!--=======Footer================================-->
        <jsp:include page="views/common/footer.jsp"/>
        <!--=======Footer================================-->
        
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
