<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container-wrap">
<aside id="fh5co-hero">
	<div class="flexslider">
		<ul class="slides">
			<li style="background-image: url();">
				<div class="overlay-gradient"></div>
				<div class="container-fluid">
					<div class="row">

						<h1 id="about-header">User Profile</h1>
						<p>Below are the details you provided when you signed up.</p>

						<p>
							<strong>User Name:</strong> ${currentUser.userName}
						</p>
						<p>
							<strong>Zone:</strong>
							<c:choose>
								<c:when test="${currentUser.zoneId == 1}">
						2a</c:when>
								<c:when test="${currentUser.zoneId == 2}">
						2b</c:when>
								<c:when test="${currentUser.zoneId == 3}">
						3a</c:when>
								<c:when test="${currentUser.zoneId == 4}">
						3b</c:when>
								<c:when test="${currentUser.zoneId == 5}">
						4a</c:when>
								<c:when test="${currentUser.zoneId == 6}">
						4b</c:when>
								<c:when test="${currentUser.zoneId == 7}">
						5a</c:when>
								<c:when test="${currentUser.zoneId == 8}">
						5b</c:when>
								<c:when test="${currentUser.zoneId == 9}">
						6a</c:when>
								<c:when test="${currentUser.zoneId == 10}">
						6b</c:when>
								<c:when test="${currentUser.zoneId == 11}">
						7a</c:when>
								<c:when test="${currentUser.zoneId == 12}">
						7b</c:when>
								<c:when test="${currentUser.zoneId == 13}">
						8a</c:when>
								<c:when test="${currentUser.zoneId == 14}">
						8b</c:when>
								<c:when test="${currentUser.zoneId == 15}">
						9a</c:when>
								<c:when test="${currentUser.zoneId == 16}">
						9b</c:when>
								<c:when test="${currentUser.zoneId == 17}">
						10a</c:when>
								<c:when test="${currentUser.zoneId == 18}">
						10b</c:when>
								<c:when test="${currentUser.zoneId == 19}">
						11a</c:when>
								<c:when test="${currentUser.zoneId == 20}">
						11b</c:when>
								<c:when test="${currentUser.zoneId == 21}">
						12a</c:when>
								<c:when test="${currentUser.zoneId == 22}">
						12b</c:when>
								<c:when test="${currentUser.zoneId == 23}">
						13a</c:when>
								<c:when test="${currentUser.zoneId == 24}">
						13b</c:when>
								<c:otherwise>No zone selected
							</c:otherwise>
							</c:choose>
						</p>
						<p>
							<strong>Email:</strong> ${currentUser.emailAddress}
						</p>
						<p>
							<strong>Farm Name:</strong> ${currentUser.farmName}
						</p>



					</div>
				</div>
			</li>
		</ul>
	</div>
</aside>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />