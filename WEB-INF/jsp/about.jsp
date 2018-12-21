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
			messages : {
				confirmPassword : {
					equalTo : "Passwords do not match"
				}
			},
			errorClass : "error"
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
						<h1 id="about-header">About Harvest Thyme</h1>
						<p>Are you ready to design your own farm right from the
							beginning? Sure, you've been planning it in your head for years.
							Now you're ready - you have the time, energy, and land to make
							your dreams a reality. But the choices can seem overwhelming. So,
							where do you start?</p>
						<p>Here are a few things to consider: What kind of farm are
							you planning? It might be a hobby farm, where your farm is a
							supplement to a full-time job, something relaxing you can do for
							fun in the evenings and on the weekends. It could be that you
							want your farm to actually make money, eventually replacing your
							current job. Or, your goal might be to produce all the food (and
							possibly power) that you and your family need - homesteading or
							self-sufficiency. This is a great exercise for learning about
							your land and what's on it. Assessing your land will give you the
							information you need to take your vision past step two and plan
							your first year of harvesting.</p>
						<p>Planning a farm depends on many aspects such as climate and
							landscape. Harvest Thyme can help you determine the best crops
							for your growing zone. We'll recommend crops that can adapt to
							your local conditions. This may seem overwhelming to get started,
							but we ask you to please Romaine calm. Harvest Thyme will never
							leaf you. We're here to help.</p>
						<p>To grow crops, it helps if harvesters understand local
							growing conditions (such as knowing when the rainy season starts,
							which crops grow well together, what nutrients the crop needs and
							are these nutrients present in the soil). After deciding what to
							grow, farmers often till the land by loosening the soil and
							mixing in fertilizers, which are nutrient rich. Then, they sow
							seeds or plant seedlings. When the crops are growing, farmers
							must water (or rely on rainfall), weeding and pest control. Once
							the crops are mature, the farmer will harvest them.</p>
						<p>Harvesters need resources to grow food. They need many
							different types of resources. Farmers need natural resources,
							such as land, air, nutrients, water and sunlight. At Harvest
							Thyme we have created a list of supplies with cost estimates to
							get you started.</p>
						<p>
							Let's start planning! <a href="/capstone/users/new">Create an
								account</a> to start customizing your grow space.
						</p>
					</div>
				</div>
			</li>
		</ul>
	</div>

</aside>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />