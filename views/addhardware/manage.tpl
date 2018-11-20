<!DOCTYPE HTML>
<html>
<head>

	<meta http-equiv="Content-Type" charset="utf-8">
	<title><?php echo $title ?></title>

	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/styles.css">

		<!-- Google Font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Oleo+Script|Raleway" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC|Oleo+Script|Raleway" rel="stylesheet">
		<!-- //-->


		<!-- jQuery -->
	  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	  	<!-- //-->

	  	<!-- jQuery UI -->
	  	<script type="text/javascript" src="/_apps/track1.5/js/jquery-ui.js"></script>
	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/jquery-ui.css">
	  	<!-- //-->

		<!-- MAIN SCRIPTS -->
		<script type="text/javascript" src="/_apps/track1.5/js/main.js"></script>
		<!-- //-->

		<!-- Ajax -->
		<script type="text/javascript" src="/_apps/track1.5/ajax/scripts.js"></script>
		<!-- //-->

	  	<!-- Foundation -->
	     <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/foundation.css">
	     <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/normalize.css">
	     <!-- //-->

	     <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

			 <script>
	 		    $(function() {
	 		        $( ".datefield" ).datepicker();
	 		    });
</script>

</head>

<body id="manageBody">

<div style="min-width: 960px; margin: 0 auto;">

	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>


<div class="row">
<div class="large-8 columns">
<form>
<!--********************* INLINE CODE HERE FOR TITLE AND FIELDSET *************************************************************************-->

		<h1><div style ='margin-bottom: -20px;font-family: Oleo Script;font-weight:bold; font-size: 250%;margin-left: 30px;text-shadow: 7px 7px #000;color:#a9a9a9'>Manage Hardware</h1>
<div id= "fieldsetManage">

		<fieldset>

<!-- INPUT FIELDS AASIS ASSET/ INVENTORY/ SERIAL NUMBER -->

				<div id="inputFields">
					<p><b>Use one of the three fields</b></p>

					<label style="text-align: left;">AASIS Asset Number:</label>
					<input type="text" id="assetNumber" />

					<label style="text-align: left;">Inventory Number:</label>
					<input type="text" id="inventoryNumber" />

					<label style="text-align: left;">Serial Number:</label>
					<input type="text" id="serialNumber" />
				</div>

<!-- VIEW HARDWARE BY DATE TEXT FIELDS -->

				<!-- <fieldset class="float-root">

					<p>View hardware by date</p>

					<label style="text-align: left;">Select Hardware Type:</label>
					<select id="hardwareType">

						<option>Select</option> -->

						<?php

							/*$row=0;
							while($row < sizeof($this->_data['addHardwareType'])){
								echo "<option>" . $this->_data['addHardwareType'][$row]['EquipType'] . "</option>";
								$row++;
							}*/

						?>

					<!-- </select>

					<div class="left">
						<label style="text-align: left;">Before:</label>
						<input id='beforePurchDate' type="text" maxlength="10" class='datefield' />
					</div>

					<div class="right">
						<label style="text-align: left;">After:</label>
						<input id='afterPurchDate' type="text" maxlength="10" class='datefield' />
					</div>
			</fieldset> -->
</div>
			<!-- <div>
			HERE IT IS!!!!!!
				<input type="submit" id="search" value="Search" />
			</div>  -->
			<button id="search"><span>Search</span></button>
		</fieldset>

		</form>
	</div>

	<div class="large-4 columns">

<!-- LIST OF RESULTS PRESENTED ON THE RIGHT AFTER SEARCH IS SELECTED -->
	<div id="manage-results"><!-- style="overflow: auto; margin-left: 35%; -->
	</div>

	</div>

	</div>

	<div id="hw-modal">
	</div>

<!-- //////////////// PAGE MODAL LEFT AND RIGHT ////////////////////////////////////////////////////// -->

	<div id="hwAction-modal" class="modal3" style="width: 60%;">
		<div class="viewDetail-modal3" style="width: 100%;">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Hardware Detail</h2>
			</div>
			<div class="modal-body" id="action-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

<!--///////// MODAL4//////////-->

	<div id="transfer-retire-modal" class="modal4" style="width: 60%;">
		<div class="viewDetail-modal4">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Action</h2>
			</div>

			<div class="modal-body" id="transfer-retire-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

<!-- //////////////// TEMPORARY MODAL MESSAGES //////////////////////////////////////////////////// -->

	<div id="hwMessage-modal" class="modal2" style="width: 60%;">
		<div class="viewDetail-modal3">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Results</h2>
			</div>
			<div class="modal-body" id="message-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

	<script type="text/javascript">

//////////////////////////// MODAL AFTER ON CLICK///////////////////////////////////////////////////// 
	
		var modal3 = document.getElementById('hwAction-modal');
		var modal4 = document.getElementById('transfer-retire-modal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		var span2 = document.getElementsByClassName("close")[1];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal3.style.display = "none";
		}

		span2.onclick = function() {
		    modal4.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		// window.onclick = function(event) {
		//     if (event.target == modal3) {
		//         modal3.style.display = "none";
		//     }
		//     if (event.target == modal4) {
		//         modal4.style.display = "none";
		//     }
		// }

/**************************************************************************************
*							Search button click function
**************************************************************************************/
		$("#search").click(function(event){

// HARD CODING isViewHW
			var isGridHW = true;
			var isViewHW = false;
			var isTransferHW = false;
			var isTransferHist = false;
			var isRetireHW = false;

// Getting elements by id
			var assetNumber = document.getElementById('assetNumber').value;
			var inventoryNumber = document.getElementById('inventoryNumber').value;
			var serialNumber = document.getElementById('serialNumber').value;
	if(assetNumber != '' || inventoryNumber != '' || serialNumber != '' || getHardwareType != 'Select' || getBeforePurchDate != '' || getAfterPurchDate != ''){

// ajax function to get all the HW data
				$.ajax({
					type: 'GET',
					url: '/_apps/track1.5/php/manageHardware.php',
					data: 'isGridHW=' + isGridHW + '&isViewHW=' + isViewHW + '&isTransferHW=' + isTransferHW + '&isTransferHist=' + isTransferHist + '&isRetireHW=' + isRetireHW + '&assetNumber=' + assetNumber + '&inventoryNumber=' + inventoryNumber + '&serialNumber=' + serialNumber,
					dataType: 'html',
					success: function(html){

// Succsess - put this in the manage results DIV 
						if(html != ''){
							$("#manage-results").html(html);
						}else{
							$("#message-body").html("<p style='color: #660000;'>No data was found. Try again and make sure your input is correct.</p>");
							modal.style.display = "block";
							$("#hwMessage-modal").show().delay(3000).fadeOut();
						}
					},
					error: function(){
// Error  
						alert('fail');
					}
				});
			}else{
				$("#message-body").html("<p style='color: #660000;'>No data was sent.</p>");
				modal3.style.display = "block";
				$("#hwMessage-modal").show().delay(2000).fadeOut();
			}


// Prevents the page from reloading
			event.preventDefault();

		});


		function transferHW(){
			var locationAndCostCenter = encodeURIComponent(document.getElementById('transferLocationAndCostCenterHW').value);
				locationAndCostCenter = locationAndCostCenter.replace("'", "''");
			var trasferDate = document.getElementById('transferDateHW').value;
			var notes = document.getElementById('transferNotesHW').value;
			var oldCostCenter = document.getElementById('CostCenter').value;
			var assetNumber = document.getElementById('AssetNumber').value;
			var assetSubNumber = document.getElementById('AssetSubNum').value;
			var status = document.getElementById('Status').value;
			var newFacility = document.getElementById('newFacilityLoc').value;
			var newJobTitle = document.getElementById('newJobTitle').value;
			var newEmployee = document.getElementById('newEmployeeName').value;
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/transferHardware.php',
				data: 'locationAndCostCenter=' + locationAndCostCenter + '&date=' + trasferDate + '&notes=' + notes + '&status' + status + '&oldCostCenter=' + oldCostCenter + '&assetNumber=' + assetNumber + '&assetSubNumber=' + assetSubNumber + '&newFacility=' + newFacility + '&newJobTitle=' + newJobTitle + '&newEmployee=' + newEmployee,
				dataType: 'html',
				success: function(html){
					$("#message-body").html(html);
					//$("#hwMessage-modal").style.display = "block";
					$("#hwMessage-modal").show().delay(2000).fadeOut();
				},
				error: function(){
					$("#message-body").html("<p style='color: #660000;'>Oh no! There was a problem. Please try again.</p>");
					//modal3.style.display = "block";
					$("#hwMessage-modal").show().delay(2000).fadeOut();
				}
			});

		}

		function retireHW(){
			var retireDate = document.getElementById('retireDateHW').value;
			var hdRemovedBy = document.getElementById('hdRemovedBy').value;
			var method = document.getElementById('retireMethodHW').value;
			var sdfNum = document.getElementById('retireSDFHW').value;
			var notes = document.getElementById('retireNotesHW').value;
			var assetNumber = document.getElementById('AssetNumber').value;
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/retireHardware.php',
				data: 'date=' + retireDate + '&techName=' + hdRemovedBy + '&method=' + method + '&sdfNum=' + sdfNum + '&notes=' + notes + '&assetNumber=' + assetNumber,
				dataType: 'html',
				success: function(html){
					$("#message-body").html(html);
					modal3.style.display = "block";
					$("#hwMessage-modal").show().delay(2000).fadeOut();
				},
				error: function(){
					$("#message-body").html("<p style='color: #660000;'>Oh no! There was a problem. Please try again.</p>");
					modal3.style.display = "block";
					$("#hwMessage-modal").show().delay(2000).fadeOut();
				}
			});

		}

		function transferAllSoftware(assetNumber){
			var newAssetNumber = $("#newAssetNumber").val();
			console.log("All software from "+assetNumber+" will transfer over to "+newAssetNumber);
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/transferSoftware.php',
				data: 'oldAssetNumber='+assetNumber+'&newAssetNumber='+newAssetNumber+'&isAllSW='+'true',
				dataType: "html",
				success: function(html){
					$("#message-body").html(html);
					modal3.style.display = "block";
					$("#hwMessage-modal").show().delay(1000).fadeOut();
				},
				error: function(){
					alert('fail');
				}
			});
		}

		$('#hw-modal').dialog({
			autoOpen: false,
			width: 600,
			buttons:[
				{
					text: 'Close',
					click: function(){
						$(this).dialog('close');
					}
				}
			]
		});

/**************************************************************************************
*							Transfer/Retire button click function
**************************************************************************************/
		function showSoftwareDetail(swID){
			event.preventDefault();
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getPurchaseDetail.php',
				data: 'ID=' + swID + '&isPurchaseDetailPage=false',
				dataType: "html",
				success: function(html){
					$("#transfer-retire-body").html(html);
					modal4.style.display = "block";
				},
				error: function(){
					alert('fail');
				}
			});
		}

		function hardwareAction(action, assetNumber){
// Prevents the page from reloading
			event.preventDefault();
			var activeModal = modal3;
			var div = "#action-body";
			if(action == 'transfer'){
				var isTransferHW = true;
				var isTransferSW = false;
				var isRetireHW = false;
				var isViewHW = false;
				var isViewSW = false;
				activeModal = modal4;
				div = "#transfer-retire-body";
			}else if(action == 'retire'){
				var isTransferHW = false;
				var isTransferSW = false;
				var isRetireHW = true;
				var isViewHW = false;
				var isViewSW = false;
				activeModal = modal4;
				div = "#transfer-retire-body";
			}else if(action == 'transferSW'){
				var isTransferHW = false;
				var isTransferSW = true;
				var isRetireHW = false;
				var isViewHW = false;
				var isViewSW = false;
				activeModal = modal4;
				div = "#transfer-retire-body";
			}else{
				var isTransferHW = false;
				var isTransferSW = false;
				var isRetireHW = false;
				var isViewHW = true;
				var isViewSW = false;
			}

			var isTransferHist = false;

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/manageHardware.php',
				data: 'isViewHW=' + isViewHW + '&isTransferHW=' + isTransferHW + '&isTransferSW=' + isTransferSW + '&isTransferHist=' + isTransferHist + '&isRetireHW=' + isRetireHW + '&isViewSW='+ isViewSW + '&assetNumber=' + assetNumber,
				dataType: 'html',
				success: function(html){
					$(div).html(html);
					activeModal.style.display = "block";
				},
				error: function(){
					alert('fail');
				}
			});

		}

/**************************************************************************************
*							Edit button click function
**************************************************************************************/

		function hardwareEdit(){
// Prevents the page from reloading
			event.preventDefault();
// CREATE ARRAY CALLED VALUES TO STORE FORM VALUES
			var values = [];
// CREATE ARRAY CALLED COLUMNS TO STORE COLUMN NAMES FROM SQL TABLE 
			var columns = [];
// GET ASSET NUMBER FROM FORM
			var assetNumber = document.getElementById('assetNumber').value;

// IF EDIT BUTTON IS CLICKED...
			//if(document.getElementById('edit').value == 'Edit'){
// CHANGE EDIT BUTTON TEXT TO 'SAVE'
				//document.getElementById('edit').value = 'Save'
// GO THROUGH EACH FORM ELEMENT AND ENABLE IT FOR EDITING
				// $("input, textarea").each(function(){
				// 	if($(this).attr('disabled')){
				// 		$(this).removeAttr('disabled');
				// 	}
				// });
				
// OTHERWISE, DO THIS...
			//}else{
// CHANGE EDIT BUTTON TEXT BACK TO 'EDIT'
				//document.getElementById('edit').value = 'Edit'
// GO THROUGH EACH FORM ELEMENT AND DISABLE IT EXCEPT FOR MANAGE HW FORM
				$("input, textarea").each(function(){
					if($(this).attr('id') != 'assetNumber' && $(this).attr('id') != 'inventoryNumber' && $(this).attr('id') != 'serialNumber' && $(this).attr('id') != 'beforePurchDate' && $(this).attr('id') != 'afterPurchDate' && $(this).attr('id') != 'edit' && $(this).attr('id') != 'transfer' && $(this).attr('id') != 'transferSW' && $(this).attr('id') != 'retire' && $(this).attr('id') != 'search'  && $(this).attr('id') != 'trackSearchItem' && $(this).attr('id') != 'RetireDate' && $(this).attr('id') != 'RetireMethod' && $(this).attr('id') != 'SDFNum'  && $(this).attr('id') != 'EntryDate' && $(this).attr('id') != 'UserName' && $(this).attr('id') != 'RemovedBy' && $(this).attr('id') != 'RetireNotes' && $(this).attr('id') != 'transferDateHW' && $(this).attr('id') != 'newJobTitle' && $(this).attr('id') != 'newEmployeeName' && $(this).attr('id') != 'transferNotesHW'){
						// $(this).attr({
		    //                 'disabled': 'disabled'
		    //             });
// STORE ID NAMES OF EACH ELEMENT IN THE COLUMNS ARRAY (BECAUSE THE IDS ARE NAMED AFTER THE COLUMNS IN THE SQL TABLE)
		                columns.push($(this).attr('id'));
// STORE VALUSE OF EACH ELEMENT IN THE VALUES ARRAY
		                values.push($(this).val().trim());
		                console.log(columns);
					}
				});

// AJAX FUNCTION TO TELL THE USER EDIT WAS SUCCESSFUL OR NOT	
				$.ajax({
					type: 'GET',
					url: '/_apps/track1.5/php/editHardware.php',
					data: '&values='+encodeURIComponent(values)+'&columns='+columns+'&assetNumber='+assetNumber,
					dataType: 'html',
					success: function(html){
						console.log(html);
						$("#message-body").html(html);
						$("#hwMessage-modal").show().delay(2000).fadeOut();
					},
					error: function(){
						alert('fail');
					}
				});
			//}
		}

	</script>


	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-id="inputFields" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>Pick 1 of 3</h2>
                <p>Each hardware record has its own Asset Number, Inventory Number, or Serial Number. Usually, an Asset Number is 9-digit that begins with a '2', an Inventory Number could be the same as the Asset Number but if it's an older record, then it'll be 5-digit and begin with a '5', Last, a Serial Number may contain letters, numbers, or both and the length of one Serial Number won't neccessarily be the same as another Serial Number.</p>
            </li>
            <li data-id="search" data-text="End" data-prev-text="Prev">
              <h1>Search it</h2>
                <p>Once you've chosen a view from the radio buttons and you've entered an Asset Number, an Invertory Number, OR a Serial Number, then hit this 'Search' button to view the records on the right.</p>
            </li>
          </ol>

<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.min.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.joyride.js"></script>
<script type="text/javascript" src="/_apps/track1.5/js/foundation/jquery.cookie.js"></script>

<script type="text/javascript">

      $('#help').click(function(){
        $(document).foundation('joyride', 'start');
      });

</script>

</div></body>

</html>
