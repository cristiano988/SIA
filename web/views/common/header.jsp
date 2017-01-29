<%@page import="com.models.data.User"%>
<header id="header">
	<div id="stuck_container">
            <div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="index">SIA</a><span>SWOT analysis</span></h1>
					<nav>
						<ul class="sf-menu">
							<!--<li class="current"><a href="index.html">Home</a>-->
                                                        <% 
                                                        User user = (User)session.getAttribute("user");
                                                        if(user != null)
                                                        {
                                                         %>
                                                         <li><a href="#" class="personal-menu">Hello <%=user.getUsername()%></p></a>
                                                         <ul>
                                                             <li><a href="novaanalise">Nova Análise</a></li>
                                                             <li><a href="historico">Histórico</a></li>
                                                         </ul>
                                                         </li>
                                                         <%
                                                        }
                                                        %>
                                                        <li><a href="index">Home</a>
                                                        </li>
							<li><a href="about">About</a></li>
							<li><a href="services">Services</a></li>
                                                        <% if(user == null){ %>
                                                        <li><a href="login">Login</a></li>
                                                        <%}else{%>
                                                        <li><a href="logout">Logout</a></li>
                                                        <%}%>
							
						</ul>
					</nav>
				</div>
			</div>
            </div>
	</div>
</header>
