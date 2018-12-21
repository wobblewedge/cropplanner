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
							<div class="container-wrap">

								<h1 id="about-header">Configure Plots at ${currentUser.farmName}?</h1>
								<p>Let's spread your seeds now! Since we know the the right
									grow zone and sun exposure, we can recommend the correct plants
									to maximize your plot success. Simply select a plant below to
									begin filling up your plot. We will let you know when your plot
									is getting too full. Don't take yourself too seriously. Have
									fun with your farm - that's why it's your hobby, right? Because
									you enjoy it? Everything you do on your hobby farm should
									ultimately enrich your life, not make it feel burdensome or
									overwhelming.</p>
								<c:forEach items="${plots}" var="plot" varStatus="index">

									<div class="panel panel-default" style="margin-right: 20px">
										<p style="margin-left: 20px">Plot #${index.count}</p>
										<div id="plots_${index.count}" class="btn btn-sm">

											<!--this is our problem area!-->
											<button class="button btn-primary btn-sm plants"
												data-toggle="modal" data-target="#plotModal${index.count}"
												data-whatever="${plot.sunExposureId}">
												<span class="glyphicon glyphicon-grain"></span><strong>
													Recommended Plants</strong>
											</button>
											</div>
												<br> Plot Utilization
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width:${plot.utilization}%;" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="modal fade plantmodal"
											id="plotModal${index.count}" tabindex="-1" role="dialog"
											aria-labelledby="plotModalLabel" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<span><strong>Plant Selection</strong></span>
														<button type="button" class="close closeErase"
															data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div id="modalPlantBody${index.count}" class="modal-body">
														<span>Please select a plant, enter a quantity and
															click Plant It.</span><br></br>
														<c:url var="formAction" value="/YourFarm" />
														<form class="plantItForm" action="${formAction}"
															method="POST">
															<input type="hidden" name="CSRF_TOKEN"
																value="${CSRF_TOKEN}" /> 
															<label for="plantChosen">Plant:</label>
															<select name="plantChosen" class="issaPlant" data-bind="plantChosen">
															</select><br /> <br /> <label for="plantQuantity">Quantity:</label>
															<input type="text" id="plantQuantity"
																name="plantQuantity" data-bind="plantQuantity" value="1"/><input type="hidden"
																id="plotNum" name="plotId" value="${plot.plotId}"/><input type="hidden"
																id="plotUtil" name="plotUtilization" value="${plot.utilization}"/>
														</form>
													</div>
													<div class="modal-footer row">

														<div class="input-group input-group-sm mb-3"
															style="margin-left: 20px">
															<div class="input-group-prepend">
																<button type="button"
																	class="btn btn-secondary closeErase"
																	data-dismiss="modal">Close</button>
																<button type="button"
																	class="button btn-primary btn-sm submitPlant">Plant
																	It</button>

															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="sunExposureId" style="margin-left: 20px">
											<c:choose>
												<c:when test="${plot.sunExposureId == 1}">
													<input type="hidden" id="sunExposureOne" name="sunExposure"
														value="${plot.sunExposureId}">
													<span>Full Sun</span>
												</c:when>
												<c:when test="${plot.sunExposureId == 2}">
													<input type="hidden" id="sunExposureTwo" name="sunExposure"
														value="${plot.sunExposureId}">
													<span>Partial Sun </span>
												</c:when>
												<c:otherwise>
													<input type="hidden" id="sunExposureThree"
														name="sunExposure" value="${plot.sunExposureId}">
													<span>Full Shade</span>

												</c:otherwise>
											</c:choose>
										</div>
									</div>

								</c:forEach>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</aside>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />