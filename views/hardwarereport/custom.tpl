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

		<!-- Sort elements pluggin -->
		<script type="text/javascript" src="/_apps/track1.5/ajax/sortElements.js"></script>
		<!-- //-->

	  	<!-- Foundation -->
	     <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/foundation.css">
	     <link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/foundation/normalize.css">
	     <!-- //-->

			 <script>
	 		    $(function() {
	 		        $( ".datefield" ).datepicker();
	 		    });
	 		</script>

</head>

<body>
<div style="min-width: 960px; margin: 0 auto;">
	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

	<form>

<!-- BACK TO TOP OPTION -->

<a href="#" class="back-to-top">Back To Top</a>

<script type="text/javascript">
	$('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');

	var amountScrolled = 100;

$(window).scroll(function() {
	if ( $(window).scrollTop() > amountScrolled ) {
		$('a.back-to-top').fadeIn('slow');
	} else {
		$('a.back-to-top').fadeOut('slow');
	}
});

$('a.back-to-top').click(function() {
	$('html, body').animate({
		scrollTop: 0
	}, 700);
	return false;
});

</script>

		<h1><div style ='font-family: Oleo Script;font-weight:bold; font-size: 250%;text-align: center;text-shadow: 7px 7px #000;color:#a9a9a9'>Report Selected Hardware</h1>
</div>
		




<ul id="filters">

<!-- EQUIPTYPE -->
	<li>
		<input type="checkbox" value="EquipType" id="filter-categoryEquipType">
				<label for="filter-categoryEquipType" class="ETYPELABEL">Equipment Type</label>
						<div class="EquipType subCategories" style="display: none; margin-left: 20px;">
					
					<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>

		<tbody>

					<?php
						$row=0;
						$counter = 0;
						while($row < sizeof($this->_data['types'])){
							if($counter == 0){
								echo "<tr>";
							}

							echo "<td><input type='checkbox' name='EquipTypecolumns[]' id='" . $this->_data['types'][$row]['EquipType'] ."' value='" . $this->_data['types'][$row]['EquipType'] . "'><label for='" . $this->_data['types'][$row]['EquipType'] . "'>" . $this->_data['types'][$row]['EquipType'] . "</label></td>";

							$counter++;
							if($counter == 5){
								echo "</tr>";
								$counter = 0;
							}

							$row++;
						}
					?>
					</tbody>
					</table>
				</div>
			</li>

<!-- Manufacturer ///////////////////////////////////////////////////////////////////////////////////////////////// -->
			<li>
				<input type="checkbox" value="Manufacturer" id="filter-categoryManufacturer">
				<label for="filter-categoryManufacturer">Manufacturer</label>

				<div class="Manufacturer subCategories" style="display: none; margin-left: 20px;">
					<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>

					<?php
						$row=0;
						$counter = 0;
						while($row < sizeof($this->_data['manufacturers'])){
							if($counter == 0){
								echo "<tr>";
							}

							echo "<td><input type='checkbox' name='Manufacturercolumns[]' id='" . $this->_data['manufacturers'][$row]['Manufacturer'] ."' value='" . $this->_data['manufacturers'][$row]['Manufacturer'] . "'><label for='" . $this->_data['manufacturers'][$row]['Manufacturer'] . "'>" . $this->_data['manufacturers'][$row]['Manufacturer'] . "</label></td>";

							$counter++;
							if($counter == 7){
								echo "</tr>";
								$counter = 0;
							}

							$row++;
						}
					?>
					</tbody>
					</table>
				</div>
			</li>

<!-- Tier //////////////////////////////////////////////////////////////////////////////// -->
			<li>
				<input type="checkbox" value="Tier" id="filter-categoryTier">
				<label for="filter-categoryTier">Tier</label>
				<div class="Tier subCategories" style="display: none; margin-left: 20px;">

				<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<tr>

					<td><input type="checkbox" name='Tiercolumns[]' id="0" value="0"><label for="0">0</label></td>
					
					<td><td><td><input type="checkbox" name='Tiercolumns[]' id="1" value="1"><label for="1">1</label></td>
					
					<td><td><input type="checkbox" name='Tiercolumns[]' id="2" value="2"><label for="2">2</label></td>
					
					<td><input type="checkbox" name='Tiercolumns[]' id="3" value="3"><label for="3">3</label></td>
					</tr>
						</tbody>
					</table>
				</div>
			</li>

<!-- STATUS //////////////////////////////////////////////////////////////////////////////// -->
			<li>
				<input type="checkbox" value="Status" id="filter-categoryStatus">
				<label for="filter-categoryStatus">Status</label>
				<div class="Status subCategories" style="display: none; margin-left: 20px;">

				<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
						<tr>

					<td><input type="checkbox" name='Statuscolumns[]' id="Active" value="Active"><label for="Active">Active</label></td>
					
					<td><td><td><input type="checkbox" name='Statuscolumns[]' id="Inactive" value="Inactive"><label for="Inactive">Inactive</label></td>
					
					<td><td><input type="checkbox" name='Statuscolumns[]' id="Retired" value="Retired"><label for="Retired">Retired</label></td>
					
					</tr>
						</tbody>
					</table>
				</div>
			</li>

<!-- LocationName /////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<li>
				<input type="checkbox" value="FacilityLoc" id="filter-categoryFacilityLoc">
				<label for="filter-categoryFacilityLoc">Facility</label>

				<div class="FacilityLoc subCategories" style="display: none; margin-left: 20px;">
					<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>

					<?php
						$row=0;
						$counter = 0;
						while($row < sizeof($this->_data['facilities'])){
							if($counter == 0){
								echo "<tr>";
							}

							echo "<td><input type='checkbox' name='FacilityLoccolumns[]' id='" . $this->_data['facilities'][$row]['FacilityLoc'] ."' value='" . $this->_data['facilities'][$row]['FacilityLoc'] . "'><label for='" . $this->_data['facilities'][$row]['FacilityLoc'] . "'>" . $this->_data['facilities'][$row]['FacilityLoc'] . "</label></td>";

							$counter++;
							if($counter == 3){
								echo "</tr>";
								$counter = 0;
							}

							$row++;
						}
					?>
					</tbody>
					</table>
				</div>
			</li>

<!-- LocationName /////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<li>
				<input type="checkbox" value="LocationName" id="filter-categoryLocationName">
				<label for="filter-categoryLocationName">Location</label>

				<div class="LocationName subCategories" style="display: none; margin-left: 20px;">
					<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>

					<?php
						$row=0;
						$counter = 0;
						while($row < sizeof($this->_data['locations'])){
							if($counter == 0){
								echo "<tr>";
							}

							echo "<td><input type='checkbox' name='LocationNamecolumns[]' id='" . $this->_data['locations'][$row]['loc_name'] ."' value='" . $this->_data['locations'][$row]['loc_name'] . "'><label for='" . $this->_data['locations'][$row]['loc_name'] . "'>" . $this->_data['locations'][$row]['loc_name'] . "</label></td>";

							if(trim($this->_data['locations'][$row]['loc_name']) == 'MIS'){
								echo "<td><input type='checkbox' name='LocationNamecolumns[]' id='MIS TRANSFER' value='MIS TRANSFER'><label for='MIS TRANSFER'>MIS TRANSFER</label></td>";
							}

							$counter++;
							if($counter == 6){
								echo "</tr>";
								$counter = 0;
							}

							$row++;
						}
					?>
					</tbody>
					</table>
				</div>
			</li>
<!-- Date -->
			<li>

				<input type="radio" name="dateType" id="PurchaseDate" value="PurchaseDate" checked>
				<label for="PurchaseDate">Purchase Date</label>

				<input type="radio" name="dateType" id="ReplaceDate" value="ReplaceDate">
				<label for="ReplaceDate">Replacement Date</label>

				<br />

				<label for="filter-categoryAfterDate">After Date:</label>
				<input type="input" id="filter-categoryAfterDate" maxlength="10" class='datefield'>
			
				<label for="filter-categoryBeforeDate">Before Date:</label>
				<input type="input" id="filter-categoryBeforeDate" maxlength="10" class='datefield'>
			
			</li>
<!-- Additional fields -->

			<li>
				<input type="checkbox" value="Fields" id="filter-categoryFields">
				<label for="filter-categoryFields">Additional fields to include</label>

				<div class="Fields subCategories" style="display: none; margin-left: 20px;">

					<table style="width: 100%;">
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
<!--Additional-->
						<tr>

					<td><input type="checkbox" name='Additionalcolumns[]' id="AssetNumber" value="AssetNumber"><label for="AssetNumber">Asset #</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="AssetSubNum" value="AssetSubNum"><label for="AssetSubNum">Asset Sub. #</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="SerialNum" value="SerialNum"><label for="SerialNum">Serial #</label></td>
					
					<td><input type="checkbox" name='Additionalcolumns[]' id="InventoryNum" value="InventoryNum"><label for="InventoryNum">Inventory #</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="MachineName" value="MachineName"><label for="MachineName">Machine Name</label></td>

					</tr>


					<tr>
					
					<td><input type="checkbox" name='Additionalcolumns[]' id="InstallDate" value="InstallDate"><label for="InstallDate">Install Date</label></td>
					
					<td><input type="checkbox" name='Additionalcolumns[]' id="ReplaceDate" value="ReplaceDate"><label for="ReplaceDate">Replacement Date</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="AcqMethod" value="AcqMethod"><label for="AcqMethod">Acquisition Method</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="MISUseOnly" value="MISUseOnly"><label for="MISUseOnly">MIS Use Only</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="Description" value="Description"><label for="Description">Description</label></td>


					</tr>


					<tr>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="PONum" value="PONum"><label for="PONum">PO #</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="JobTitle" value="JobTitle"><label for="JobTitle">Job Title</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="EmployeeName" value="EmployeeName"><label for="EmployeeName">Employee Name</label></td>
				
					<td><input type="checkbox" name='Additionalcolumns[]' id="FacilityLoc" value="FacilityLoc"><label for="FacilityLoc">Facility Location</label></td>
					
					<td><input type="checkbox" name='Additionalcolumns[]' id="CostCenter" value="CostCenter"><label for="CostCenter">Cost Center</label></td>

					</tr>


					<tr>
					
					<td><input type="checkbox" name='Additionalcolumns[]' id="TechName" value="TechName"><label for="TechName">Tech. Name</label></td>

					<td><input type="checkbox" name='Additionalcolumns[]' id="Model" value="Model"><label for="Model">Model</label></td>

					</tr>
					
				</tbody>
					</table>
				</div>
			</li>
		</ul>
<div>

<!-- SUBMIT BUTTON  -->
		<div>
			<button type="submit" id="submit" value="Submit">View</button>
			<button type="submit" id="getAllRecords" value="GetAllRecords">Get All</button>
			<div id="report-ALL-results">
			</div>
		</div>

	</form>

<!-- REPORT RESULTS GO HERE -->

	<div id="report-results" >
	</div>

	<!-- <button class="reportDLBtn">Download</button> -->

	<div id="viewDetail-modal">
	</div>

	<div id="hwAction-modal" class="modal3" style="width: 60%;">
		<div class="viewDetail-modal3" style="width: 100%;">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Hardware Detail</h2>
			</div>
			<div class="modal-body" id="detail-body" style="width: 100%;">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>

	<script type="text/javascript">

		var modal1 = document.getElementById('hwAction-modal');

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		    modal1.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal1) {
		        modal1.style.display = "none";
		    }
		}

// BOOLEAN VALUS FOR SELECTING ALL ITEMS
		var isEquipType = false,
			isManufacturer = false,
			isTier = false,
			isStatus = false,
			isFacility = false,
			isLocation = false;

		$("#filters :checkbox").click(function(event) {
	       // $(".subCategories").hide("slow", "linear");
// EQUIP TYPE
	       if($("#filter-categoryEquipType").prop('checked')==true){
	       	$(".EquipType").show("slow", "linear");
	       	isEquipType = true;
	       }else{
	       	$(".EquipType").hide("slow", "linear");
	       	isEquipType = false;
	       }
// MANUFACTURER
			if($("#filter-categoryManufacturer").prop('checked')==true){
	       	$(".Manufacturer").show("slow", "linear");
	       	isManufacturer = true;
	       }else{
	       	$(".Manufacturer").hide("slow", "linear");
	       	isManufacturer = false;
	       }
// OS
			if($("#filter-categoryOS").prop('checked')==true){
	       	$(".OS").show("slow", "linear");
	       }else{
	       	$(".OS").hide("slow", "linear");
	       }
// TIER
			if($("#filter-categoryTier").prop('checked')==true){
	       	$(".Tier").show("slow", "linear");
	       	isTier = true;
	       }else{
	       	$(".Tier").hide("slow", "linear");
	       	isTier = false;
	       }
// Status
			if($("#filter-categoryStatus").prop('checked')==true){
	       	$(".Status").show("slow", "linear");
	       	isStatus = true;
	       }else{
	       	$(".Status").hide("slow", "linear");
	       	isStatus = false;
	       }
// FACILITY
			if($("#filter-categoryFacilityLoc").prop('checked')==true){
	       	$(".FacilityLoc").show("slow", "linear");
	       	isFacility = true;
	       }else{
	       	$(".FacilityLoc").hide("slow", "linear");
	       	isFacility = false;
	       }
// LOCATION
			if($("#filter-categoryLocationName").prop('checked')==true){
	       	$(".LocationName").show("slow", "linear");
	       	isLocation = true;
	       }else{
	       	$(".LocationName").hide("slow", "linear");
	       	isLocation = false;
	       }
// ADDITIONAL FIELDS
			if($("#filter-categoryFields").prop('checked')==true){
	       	$(".Fields").show("slow", "linear");
	       }else{
	       	$(".Fields").hide("slow", "linear");
	       } 
	       $("#filters :checkbox:checked").each(function() {
	           $("." + $(this).val()).show("slow", "linear");
	           //console.log($("." + $(this).val()));
	       });
	    });

		var isTypesShow = false;
		$("#showTypes").click(function(event){
			if(isTypesShow){
				$("#hwType").show(1000, "swing");
				isTypesShow = false;
			}else{
				$("#hwType").hide(500, "swing");
				isTypesShow = true;
			}

			event.preventDefault();
		});

		$("#getAllRecords").click(function(){
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/reportAllHardware.php',
				dataType: 'html',
				success: function(html){
					console.log(html);
					$("#report-ALL-results").html(html);
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();
		});

		$("#submit").click(function(event){
			function getColumns(columns, callback){
				var checkedColumns = [];
				for(var i = 0; i < columns.length; i++){
					if(columns[i]['checked'] == true){
						checkedColumns.push(columns[i]['value']);
						console.log(columns[i]);
					}
				}

				callback(checkedColumns);
			}

			var afterDate = document.getElementById('filter-categoryAfterDate').value;
			var beforeDate = document.getElementById('filter-categoryBeforeDate').value;
			var dateType = $('input[name="dateType"]:checked').val();

			var equipType,
				manufacturers,
				tier,
				status,
				os,
				locationName,
				facilityLoc,
				additional; 

// GET EQUIPTYPE
			console.log(document.getElementsByName('EquipTypecolumns[]'));
			getColumns(document.getElementsByName('EquipTypecolumns[]'), function(c){
				equipType = c;
				if(equipType.length > 0){
					isEquipType = false;
				}
			});
// GET MANUFACTURERS
			getColumns(document.getElementsByName('Manufacturercolumns[]'), function(c){
				manufacturers = c;
				if(manufacturers.length > 0){
					isManufacturer = false;
				}
			});
// GET TIER
			getColumns(document.getElementsByName('Tiercolumns[]'), function(c){
				tier = c;
				if(tier.length > 0){
					isTier = false;
				}
				console.log(isTier);
			});
// GET STATUS
			getColumns(document.getElementsByName('Statuscolumns[]'), function(c){
				status = c;
				if(status.length > 0){
					isStatus = false;
				}
			});
// GET LOCATION NAME
			getColumns(document.getElementsByName('LocationNamecolumns[]'), function(c){
				locationName = c;
				if(locationName.length > 0){
					isLocation = false;
				}
			});
// GET FACILITY NAME
			getColumns(document.getElementsByName('FacilityLoccolumns[]'), function(c){
				facilityLoc = c;
				if(facilityLoc.length > 0){
					isFacility = false;
				}
			});
// GET ADDITIONAL
			getColumns(document.getElementsByName('Additionalcolumns[]'), function(c){
				additional = c;
			});

			console.log(equipType);

// SEND DATA TO PHP
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/reportHardware.php',
				data: 'type='+'custom'+'&EquipTypecolumns='+equipType+'&Manufacturercolumns='+manufacturers+'&Tiercolumns='+tier+'&Statuscolumns='+status+'&LocationNamecolumns='+locationName+'&FacilityLoccolumns='+facilityLoc+'&Additionalcolumns='+additional+'&beforeDate='+beforeDate+'&afterDate='+afterDate+'&dateType='+dateType+'&isEquipType='+isEquipType+'&isManufacturer='+isManufacturer+'&isTier='+isTier+'&isStatus='+isStatus+'&isLocation='+isLocation+'&isFacility='+isFacility,
				dataType: 'html',
				success: function(html){
					console.log(html);
					$("#report-results").html(html);
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		});

		$("#createCSV").click(function(event){
			function getColumns(columns, callback){
				var checkedColumns = [];
				for(var i = 0; i < columns.length; i++){
					if(columns[i]['checked'] == true){
						checkedColumns.push(columns[i]['value']);
					}
				}

				callback(checkedColumns);
			}

			var afterDate = document.getElementById('filter-categoryAfterDate').value;
			var beforeDate = document.getElementById('filter-categoryBeforeDate').value;
			var dateType = $('input[name="dateType"]:checked').val();

			var equipType,
				manufacturers,
				tier,
				os,
				locationName,
				additional; 

// GET EQUIPTYPE
			getColumns(document.getElementsByName('EquipTypecolumns[]'), function(c){
				equipType = c;
			});
// GET MANUFACTURERS
			getColumns(document.getElementsByName('Manufacturercolumns[]'), function(c){
				manufacturers = c;
			});
// GET TIER
			getColumns(document.getElementsByName('Tiercolumns[]'), function(c){
				tier = c;
			});
// GET LOCATION NAME
			getColumns(document.getElementsByName('LocationNamecolumns[]'), function(c){
				locationName = c;
			});
// GET ADDITIONAL
			getColumns(document.getElementsByName('Additionalcolumns[]'), function(c){
				additional = c;
			});

// SEND DATA TO PHP
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/reportHardware.php',
				data: 'type='+'custom'+'&EquipTypecolumns='+equipType+'&Manufacturercolumns='+manufacturers+'&Tiercolumns='+tier+'&LocationNamecolumns='+locationName+'&Additionalcolumns='+additional+'&beforeDate='+beforeDate+'&afterDate='+afterDate+'&dateType='+dateType+'&isDownload=true',
				dataType: 'html',
				success: function(html){
					console.log(html);
					$("#report-results").html(html);
				},
				error: function(){
					alert('fail');
				}
			});

			event.preventDefault();

		});

		$('#viewDetail-modal').dialog({
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

		function viewDetail(assetNumber){

			var isGridHW = false;
			var isViewHW = true;
			var isTransferHW = false;
			var isTransferHist = false;
			var isRetireHW = false;

			var inventoryNumber = '';
			var serialNumber = '';

			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/manageHardware.php',
				data: 'isGridHW=' + isGridHW + '&isViewHW=' + isViewHW + '&isTransferHW=' + isTransferHW + '&isTransferHist=' + isTransferHist + '&isRetireHW=' + isRetireHW + '&assetNumber=' + assetNumber + '&inventoryNumber=' + inventoryNumber + '&serialNumber=' + serialNumber + '&noButtons=true',
				dataType: 'html',
				success: function(html){
					$('#detail-body').html(html);
					modal1.style.display = 'block';
				},
				error: function(){
					alert('fail');
				}
			});
		}

	</script>


	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-id="fieldSelection" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>Select fields</h2>
                <p>Select any number of fields to build your report.</p>
            </li>
            <li data-id="submit" data-text="End" data-prev-text="Prev">
              <h1>Run report</h2>
                <p>Once you've selected the appropriate fields, hit the submit button to generate your report.</p>
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
</div>
</body>

</html>
