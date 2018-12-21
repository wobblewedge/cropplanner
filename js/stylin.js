
$(document).ready(function(){
$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
});

//indexValue();
$('.plantmodal').on('show.bs.modal', function (event) {
	var plotId= $(this).find("[name='plotId']").val();
	var utilization = $(this).find("[name='plotUtilization']").val();
	var exposureId;
	  var button = $(event.relatedTarget) // Button that triggered the modal
	   exposureId = $(this).attr('[data-whatever]');
	  var recipient = button.data('whatever')
	  var yo = recipient.toString();	 
		var utilization = multiplyBy(1, 2, utilization, plots[plotId].plotLength, plots[plotId].plotWidth);
		console.log(utilization);
	  $.ajax({
		url:"http://localhost:8080/capstone/plot/getPlants?sunExposureId=" + yo + "&plotId=" + plotId + "&plotUtilization=" + utilization,
		type: "GET",
		dataType: "json"
	}).done(function(data) {
		console.log(data);
		for (var i = 0; i < data.length; i++) {
			$('.issaPlant').append("<option value=" + data[i].plantId + ">" + data[i].plantName + "</option>");			
			
		}
		$(".modal-footer").append("<div class=\"utilization\">Plot Utilzation: " + utilizationAfter + "</div");
	});
	  var modal = $(this)
	  modal.find('.modal-title').text('New message to ' + yo)
});

$('.closeErase').on('click', function(event) {
	//$('.plantItForm').empty();
	$('.issaPlant').empty();
});

$(".submitPlant").click(function(event) {
	$('.modal-footer').remove("utilization");
	var modalContent = $(this).parents(".plantmodal");
	modalContent.find("form").submit();
});

$('.innerTruth').on('hidden.bs.collapse', function (e) {
	    var thisTruth = $(this).children().text().collapse();
})

function howUtilizedAmI(){
var theForm = document.forms["plantItForm"];
}

});

function multiplyBy(length, width, utilization, plotWidth, plotLength){
    var plantArea = length * width;
    utilization = parseFloat(utilization);
    var totalArea = plotWidth * plotLength;
    var quantity = $("#plantQuantity").val();
    quantity = quantity == "" ? 0 : parseInt(quantity);
    var index = 0;
    	var thisUtilization = ((quantity*plantArea)/totalArea)*100;
    		
    		utilization += thisUtilization;
    	
    	if(isNaN(quantity) || utilization>100){
    			alert("YOOOOOOOOO THATS BAD");
    		}else{
    			console.log(utilization);
    			return utilization;
    		}
    	
}

//Declare a global object to store view data.
var viewData;
viewData = {};
$(function() {
    // Update the viewData object with the current field keys and values.
    function updateViewData(key, value) {
        viewData[key] = value;
    }
    // Register all bindable elements
    function detectBindableElements() {
        var bindableEls;
        bindableEls = $('[data-bind]');
        // Add event handlers to update viewData and trigger callback event.
        bindableEls.on('change', function() {
            var $this;
            $this = $(this);
            updateViewData($this.data('bind'), $this.val());
            $(document).trigger('updateDisplay');
        });
        // Add a reference to each bindable element in viewData.
        bindableEls.each(function() {
            updateViewData($(this));
        });
    }
    // Trigger this event to manually update the list of bindable elements, useful when dynamically loading form fields.
    $(document).on('updateBindableElements', detectBindableElements);
    detectBindableElements();
});
$(function() {
    // An example of how the viewData can be used by other functions.
    function updateDisplay() {
        var updateEls;
        updateEls = $('[data-update]');
        updateEls.each(function() {
            $(this).html(viewData[$(this).data('update')]);
        });
    }
    // Run updateDisplay on the callback.
    $(document).on('updateDisplay', updateDisplay);
});