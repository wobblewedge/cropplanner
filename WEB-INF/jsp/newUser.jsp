<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$.validator.addMethod('capitals', function(thing) {
							return thing.match(/[A-Z]/);
						});
						$("#registerForm")
								.validate(
										{

											rules : {
												userName : {
													required : true
												},
												password : {
													required : true,
													minlength : 8,
													capitals : true
												},
												confirmPassword : {
													required : true,
													equalTo : "#password"
												},
												email : {
													email : true,
													required : true
												},
												farmName : {
													required : true
												},
												zone : {
													required : true
												},
											},
											messages : {
												password : {
													minlength : "Please make your password contains at least 8 characters.",
													capitals : "Your password must include at least one capital letter.",
												},
												confirmPassword : {
													equalTo : "Your passwords do not match."
												},
												email : {
													email : "Please enter a valid email address."
												},
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

							<h1 id="about-header">Sign Up for Harvest Thyme</h1>
							<p>We're so happy you rose to the occasion. It's time to give
								peas a chance. Please enter your information below to start
								customizing your plot. Thistle be real quick. And one more
								thing. We're here to grow your plot, not your inbox. We promise
								not to spam you, but you're free to send us love notes and
								questions with the email below.</p>
							<p>All fields are required.</p>
								
							<div class="col-sm-4">
								<c:url var="formAction" value="/users/new" />
								<form id="registerForm" method="POST" action="${formAction}">
									<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />

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
										<div class="form-group">
											<label for="confirmPassword">Confirm Password: </label> <input
												type="password" id="confirmPassword" name="confirmPassword"
												placeHolder="Re-Type Password" class="form-control" />
										</div>
										<div class="form-group">
											<label for="email">Email:</label> <input type="text"
												id="email" name="email" placeholder="Email"
												class="form-control" />
										</div>
										<div class="form-group">
											<label for="farmName">Farm Name:</label> <input type="text"
												id="farmName" name="farmName"
												placeHolder="My Milkshake Brings All the Cows to the Farm"
												class="form-control" />
										</div>
										<div class="form-group">
											<label for="zone">Zone: </label> <select name="zone">
												<option value=" " disabled selected>Select a Zone</option>
												<option value="1">2a</option>
												<option value="2">2b</option>
												<option value="3">3a</option>
												<option value="4">3b</option>
												<option value="5">4a</option>
												<option value="6">4b</option>
												<option value="7">5a</option>
												<option value="8">5b</option>
												<option value="9">6a</option>
												<option value="10">6b</option>
												<option value="11">7a</option>
												<option value="12">7b</option>
												<option value="13">8a</option>
												<option value="14">8b</option>
												<option value="15">9a</option>
												<option value="16">9b</option>
												<option value="17">10a</option>
												<option value="18">10b</option>
												<option value="19">11a</option>
												<option value="20">11b</option>
												<option value="21">12a</option>
												<option value="22">12b</option>
												<option value="23">13a</option>
												<option value="24">13b</option>
											</select> <a href="https://planthardiness.ars.usda.gov/PHZMWeb/"
												target="_blank">&nbsp;&nbsp;What's my zone?</a>
										</div>
										<button type="submit" class="btn btn-primary">Sign Up</button>
								</form>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</aside>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp" />