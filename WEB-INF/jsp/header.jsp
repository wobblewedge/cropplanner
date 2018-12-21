<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Harvest Thyme</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script>
<script
	src="https://cdn.jsdelivr.net/jquery.timeago/1.4.1/jquery.timeago.min.js"></script>
<link rel="shortcut icon" type="image/png" href="img/b30807c5944ea.png"/>

<c:url var="cssHref" value="/css/style.css" />
<link rel="stylesheet" type="text/css" href="${cssHref}">
<link href="https://fonts.googleapis.com/css?family=Oxygen:300,400"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700"
	rel="stylesheet">
<script src="js/stylin.js"></script>
 
<script type="text/javascript">
	$(document).ready(function() {
		<!-- $("time.timeago").timeago(); -->

		$("#logoutLink").click(function(event) {
			$("#logoutForm").submit();
		});

		var pathname = window.location.pathname;
		$("nav a[href='" + pathname + "']").parent().addClass("active");

	});

	var plots = {
			<c:forEach items="${plots}" var="plot" varStatus="index">
"${plot.plotId}":{
plotId:"${plot.plotId}",
plotWidth:"${plot.plotWidth}",
plotLength:"${plot.plotLength}",
userId:"${plot.userId}",
utilization:"${plot.utilization}",
}, 	 
</c:forEach>
}
</script>

</head>
<body>
<div class="fh5co-loader" style="display: none;"></div>
<div id="page">
		<nav class="fh5co-nav" role="navigation">
			<div class="container-wrap">
				<div class="top-menu">
					<div class="row">
						
							<div id="fh5co-logo">
								<c:url var="homePageHref" value="/" />
								<c:url var="imgSrc" value="/img/logo-new.png" />
							<div><a href="${homePageHref}"><img class="col-xs-2" src="${imgSrc}"/></a></div>
					
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								
								<c:if test="${not empty currentUser}">
									
									<c:url var="addPlotHref" value="/AddPlot" />
									<li><a href="${addPlotHref}">Add Plots</a></li>
									<c:url var="yourFarmHref" value="/YourFarm" />
									<li><a href="${yourFarmHref}">Configure Plots</a></li>
									<c:url var="farmSummaryHref" value="/FarmSummary" />
									<li><a href="${farmSummaryHref}">Summary</a></li>
								</c:if>
								<c:choose>
									
									<c:when test="${empty currentUser}">
										<c:url var="aboutUsHref" value="/about" />
										<li><a href="${aboutUsHref}">About Us</a></li>
										<c:url var="newUserHref" value="/users/new" />
										<li><a href="${newUserHref}">Sign Up</a></li>
										<c:url var="loginHref" value="/login" />
										<li><a href="${loginHref}">Log In</a></li>
									</c:when>
									<c:otherwise>
										<c:url var="profileHref" value="/UserProfile" />
										<li id="currentUser"><a href="${profileHref}">Hello, ${currentUser.userName}</a></li>
										<c:url var="logoutAction" value="/logout" />
										<form id="logoutForm" action="${logoutAction}" method="POST">
											<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
											<!-- <input type="submit" name="submitButton" value="Log Out" /> -->
										</form>
										<li><a id="logoutLink" href="#">Log Out</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</nav>
	</div>