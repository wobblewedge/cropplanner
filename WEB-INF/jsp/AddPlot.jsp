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
						
						<h1 id="about-header">${currentUser.farmName}</h1>
						<p>Before we can get started with our plant recommendations it's important to define each plot. Let us know how much sun each plot is getting by selecting the correct sun exposure. Full Sun is six hours or more of direct sunlight and Partial Sun includes 3 to 5 hours of direct sunlight.</p>
						<p>We're just going to Netflix and Dill while you choose.</p>

						<c:url var="formAction" value="/AddPlot" />
						<form action="${formAction}" method="POST">
						 	<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
							<div class="form-group">
							<label for="plotLength">Length: 100 sq Feet</label> 
							</div>
							<div class="form-group">
							<label for="plotWidth">Width: 100 sq Feet</label>
							</div>
							<div class="form-group">
								<input type="hidden" name=userName value="${currentUser.userName}" />
								<label
								for="sunExposure">Sun Exposure:</label> 
								<select name="sunExposure">
								<option value=" " disabled selected>Select Sun Exposure</option>
								<option value="1">Full Sun</option>
								<option value="2">Partial Sun</option>
								</select>
								</div>
								<button type="submit" name="submitButton" class="btn btn-primary">Create Plot</button>
						</form>
					</div>
				</div>
			</li>
		</ul>
	</div>
</aside>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />