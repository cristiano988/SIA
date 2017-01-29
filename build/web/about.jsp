<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About Us</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/wow.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
    </head>
    <body class="index-1">
        <!--==============================header=================================-->
        <jsp:include page="views/common/header.jsp"/>
        <!--==============================header=================================-->
        <section id="content">
	<div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Sobre</span></h2>
					</header>
				</div>
				<div class="grid_4">
					<div class="img_container"><img src="images/index-1_img-1.jpg" alt="img"></div>
				</div>
				<div class="grid_7 preffix_1">
                                    <p>A análise SWOT é um meio de diagnóstico estratégico integrado no processo de melhoria contínua que facilita a avaliação de uma determinada organização/área. SWOT é uma sigla que contém as iniciais, em inglês, dos termos: pontos fortes (Strengths), pontos fracos (Weaknesses), oportunidades (Opportunities) e ameaças (Threats). Demonstra uma perspetiva geral da situação em que se encontra determinada organização, permitindo a identificação de estratégias e ações de melhoria, auxiliando assim à definição de novas estratégias de progressão da mesma.</p><br>
                                    <p>Esta análise divide o ambiente da organização, onde é aplicada em duas partes, ambiente interno e ambiente externo. O ambiente interno é influenciável e gerido pela organização e é caraterizado por pontos fortes e por pontos fracos. Quanto ao ambiente externo, contém elementos que não podem ser previstos ou controlados pela organização, pelo que a sua análise permite a identificação de tendências que se traduzem em oportunidades e ameaças. Através destas duas partes obtém-se uma matriz SWOT dividida por quadrantes.</p><br>
                                    <p>Após estabelecer os componentes da Matriz SWOT, é necessário cruzar as oportunidades com as forças e os pontos fracos com as ameaças para a obtenção de resultados que permitam estabelecer estratégias que minimizem os aspetos negativos e maximizem as potencialidades, visando a capitalização, o crescimento, a manutenção e a sobrevivência de uma determinada organização. Isto possibilitará a análise da real situação interna e externa da organização.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-2 parallax-block" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Our Team</span></h2>
					</header>
				</div>
				<div class="grid_3">
					<article>
						<div class="img_container"><img src="images/index-1_img-2.jpg" alt="our team"></div>
						<h4>Mark Gret</h4>
						<p>Lamus at magna non derto merli seworet gertomin</p>
					</article>
				</div>
				<div class="grid_3">
					<article>
						<div class="img_container"><img src="images/index-1_img-3.jpg" alt="our team"></div>
						<h4>Irma Anderson</h4>
						<p>Lamus at magna non derto merli seworet gertomin</p>
					</article>
				</div>
				<div class="grid_3">
					<article>
						<div class="img_container"><img src="images/index-1_img-4.jpg" alt="our team"></div>
						<h4>Sam Wood</h4>
						<p>Lamus at magna non derto merli seworet gertomin</p>
					</article>
				</div>
				<div class="grid_3">
					<article>
						<div class="img_container"><img src="images/index-1_img-5.jpg" alt="our team"></div>
						<h4>Kevin Thomson</h4>
						<p>Lamus at magna non derto merli seworet gertomin</p>
					</article>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-3">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Why Choose Us</span></h2>
					</header>
				</div>
				<div class="grid_4">
					<div class="grid_1 alpha"><span class="element bd-ra">1</span></div>
					<div class="grid_3">
						<p>Gamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed </p>
					</div>
				</div>
				<div class="grid_4">
					<div class="grid_1 alpha"><span class="element bd-ra">2</span></div>
					<div class="grid_3">
						<p>Kamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci sed </p>
					</div>
				</div>
				<div class="grid_4">
					<div class="grid_1 alpha"><span class="element bd-ra">3</span></div>
					<div class="grid_3">
						<p>Tamus at magna non nunc tristique rhoncuseri tym. Aliquam nibh ante, egestas id dictum aterert commodo re luctus libero. Praesent faucibus malesuada cibuste. Donec laoreet metus id laoreet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur orci se </p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
        <!--==============================footer=================================-->
        <jsp:include page="views/common/footer.jsp"/>
        <!--==============================footer=================================-->
    </body>
</html>
