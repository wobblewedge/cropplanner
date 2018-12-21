<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function() {

		$("form").validate({

			rules : {
				userName : {
					required : true
				},
				password : {
					required : true
				}
			},
			errorClass : "error",
			validClass : "valid"
		});
	});
</script>
<div class="container-wrap">
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
				<li style="background-image: url();">
					<div class="overlay-gradient"></div>
					<div class="container-fluid">
						<div class="row">

							<h1 id="about-header">Log In to Harvest Thyme</h1>
							<p>Not logged in? Say it ain't cilantro. Enter your credentials below to continue.</p>

							<div class="col-sm-4">
								<c:url var="formAction" value="/login" />
								<form method="POST" action="${formAction}">
									<input type="hidden" name="destination"
										value="${param.destination}" /> <input type="hidden"
										name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
									<div class="form-group">
										<label for="userName">User Name: </label> <input type="text"
											id="userName" name="userName" placeHolder="User Name"
											class="form-control" />
									</div>
									<div class="form-group">
										<label for="password">Password: </label> <input
											type="password" id="password" name="password"
											placeHolder="Password" class="form-control" />
									</div>

									<button type="submit" class="btn btn-primary">Login</button>
								</form>
								<div class="forgotPassword">
									<a
										href="mailto:sysadmin@cropplanners.org?subject=Forgotten Password">Forgot
										your password? Send us an email.</a>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>

	</aside>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />