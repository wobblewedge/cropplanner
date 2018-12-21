<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<c:import url="/WEB-INF/jsp/header.jsp" />


<div class="container-wrap">
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
				<li style="background-image: url();">
					<div class="overlay-gradient"></div>
					<div class="container-fluid">
						<div class="row">
							<h1 id="about-header">${currentUser.farmName} Summary</h1>
							<p>These days, more and more adults are discovering the joys
								of playing in the dirt, though grown-ups might prefer the term
								"gardening." Harvester, you are on your way with a great list of
								supplies to get started! With your list of supplies you are
								ready to join the movement of growing your own crops.</p>
							<p>Harvest Thyme understands plants and knows you're ready to
								see your crops get turnip. Gardening has also been shown to have
								significant health benefits. For starters, it encourages people
								to engage in other behaviors and activities that promote
								wellness.</p>
							<p>Gardening also reduces stress and improves mental health.
								Kale Yeah! And it counts as moderate-intensity exercise!
								Gardening is often a process of trial and error, so remember to
								relax and have fun with it. We promise: It's not as intimidating
								as it might seem! You were mint to do this! Basil-tov!</p>


							<c:forEach var="plots" items="${plantsByPlot}" varStatus="index">
								<div class="accordion" id="accordionExample${plots.key}">
									<div class="card">
										<div class="card-header" id="heading">
						<div class="list-group align-items-start" style="width: 96%;">
											<div class="list-group-item btn btn-link plotButton" type="button"
												data-toggle="collapse" data-target="#collapseOne${plots.key}"
												aria-expanded="true" aria-controls="collapseOne">
												Plot #${index.count} Details</div>
										
										<div id="collapseOne${plots.key}" class="collapse innerTruth"
											aria-labelledby="headingOne"
											data-parent="#accordionExample${plots.key}">
											<div class="card-body${plots.key}">
											<div class="list-group align-items-start innerPlants" style="width: 96%;">
												<c:forEach var="plant" items="${plots.value}">
												<div class="list-group-item list-group-item-success "><a href="${plant.wikipediaUrl}" target="_blank"><b>${plant.plantName}</b></a></div>
						  <div class="list-group-item"><b>Scientific Name: </b> ${plant.scientificName}</div>
						  <div class="list-group-item"><b>Growing Instructions: </b>${plant.growingInstructions}</div>
						  <div class="list-group-item"><b>Spacing Instructions: </b>${plant.spacingInstructions}</div>
						  <div class="list-group-item"><b>Harvesting Instructions: </b>${plant.harvestingInstructions}</div>
						  <div class="list-group-item"><b>Description: </b>${plant.plantDescription}</div>
						  <div class="list-group-item"><b>Quantity Planted: </b>${plant.plantQuantity}</div>
						  <div class="list-group-item"><b>Starter Type Needed: </b>${plant.plantStarterType}</div>
						  <div class="list-group-item"><b>Price Per Package of Starter: </b>$${plant.plantStarterCost}</div>
						  
												</c:forEach>
												</div>
											</div>
										</div>
										</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo">Shopping
								List</button>
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
										<span id="shoppingTitle" style="text-align: center;"><b>Your Shopping List</b></span>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
										<table style="width: 100%; text-align: left">
											<c:forEach var="material" items="${materials}">
											<tr>
										<td><b>${material.materialName}:<hr></b></td>
										 <td>$<fmt:formatNumber var="materialCost" value="${material.materialCost}" maxFractionDigits="4" />${materialCost}<hr></td>
										 
										<tr>
										</c:forEach>
										<td><b>Mulch - 10 Pound Bag [56 needed per plot]:</b></td> 
										<td>$280</td>
										</table>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Send
												message</button>
										</div>
									</div>
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