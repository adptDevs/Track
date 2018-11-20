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
		<script type="text/javascript" src="/_apps/track1.5/js/foundation/foundation.min.js"></script>
		<!-- //-->

		<script type="text/javascript">

			// This is called when the user clicks the "Create New" button. 
			// This shows and hides the form that with a div id of "#add-newMaster-form"
			$(document).ready(function(){

	   			// Fade Toggle
	   			$(".add-new-master").click(function(){
	        		$("#add-newMaster-form").toggle(1000);
	        		$("#add-currentMaster-form").toggleClass('faded');


	        		// Change the toggle button and disable/enable current master form
	        		if(document.getElementById('add-button').value == "Create New >"){
	        			document.getElementById('add-button').value = "< Go Back";
	        			$("#current-master :input").attr("disabled", true);
	        		}else{
	        			document.getElementById('add-button').value = "Create New >";
	        			$("#current-master :input").attr("disabled", false);
	        		}
	   			});

			});

		</script>

		<script>
		    $(function() {
		        $( ".datefield" ).datepicker();
		    });
		</script>

</head>

<body>

	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

	<h1><div style ='font-family: Oleo Script;font-weight:bold; font-size: 250%; text-shadow: 7px 7px #000;text-align: center;color:#a9a9a9'>Add Hardware Record To Master</h1>

	<!-- <div class="center-text">

		<button  id="add-button" class="add-new-master" value="Create New >">Create New</button>

	</div> -->
	
<!-- NOTIFY CHANGED CLASS NAME -->
	<form id="add-currentMaster-form">
		<fieldset>

			<label>Hardware Type:</label>
			<input type="text" id="hardwareType" list="typeList">
			<datalist id="typeList">
				<option>Select</option>

				<?php

					$row=0;
					while($row < sizeof($this->_data['addHardwareType'])){
						echo "<option>" . $this->_data['addHardwareType'][$row]['EquipType'] . "</option>";
						$row++;
					}

				?>

			</datalist>

			<label>Manufacturer:</label>
			<input type="text" id="manufacturer" list="manufacturerList">
			<datalist id="manufacturerList">
				<option>Select</option>

				<?php

					$row=0;
					while($row < sizeof($this->_data['addManufacturer'])){
						echo "<option>" . $this->_data['addManufacturer'][$row]['HWManuf'] . "</option>";
						$row++;
					}

				?>

			</datalist>

			<label>Hardware Tier:</label>
			<input type="text" id="tier" list="tierList">
			<datalist id="tierList">
				<option>Select</option>

				<?php

					$row=0;
					while($row < sizeof($this->_data['addTier'])){
						echo "<option>" . $this->_data['addTier'][$row]['Tier'] . "</option>";
						$row++;
					}

				?>

			</datalist>
</form>
		</fieldset>

		<div>
		<button id="selectHW" value="Select">Select</button>
		</div>


<!-- Add New -->

	<form id="add-newMaster-form" class="right center-form" style="display: none;">
		<fieldset>

			<label>Add New Hardware Model:</label>
			<input type="text" id="newModel" />

			<label>Add New Manufacturer:</label>
			<input type="text" id="newManuf" />

		</fieldset>

		<input type="submit" id="createNewHW" value="Add" />
	</form>



	<div id="addHardwareInformation-modal" class="modal3">
		<div class="viewDetail-modal3">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Additional info:</h2>
			</div>
			<div class="modal-body" id="hwInfo-body">
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>


<!-- Custom Modal Windows -->

	<!-- <div id="model-modal" title="Create New Model">

		<p>What hardware type is this hardware under?</p>

		<select id="select-hardwareType">
			<option>Select</option>

			<?php

				$row=0;
				while($row < sizeof($this->_data['addHardwareType'])){
					echo "<option>" . $this->_data['addHardwareType'][$row]['EquipType'] . "</option>";
					$row++;
				}

			?>

		</select>

		<p>What manufacturer is this hardware under?</p>

		<select id="select-manuf">
			<option>Select</option>

			<?php

				$row=0;
				while($row < sizeof($this->_data['addManufacturer'])){
					echo "<option>" . $this->_data['addManufacturer'][$row]['HWManuf'] . "</option>";
					$row++;
				}

			?>

		</select>

		<p>What tier is this hardware under?</p>

		<select id="select-tier">
			<option>Select</option>

			<?php

				$row=0;
				while($row < sizeof($this->_data['addTier'])){
					echo "<option>" . $this->_data['addTier'][$row]['Tier'] . "</option>";
					$row++;
				}

			?>

		</select>

	</div>



	<div id='newHW-modal' title='Create New Hardware'>

		<p>What hardware type is this model under?</p>

		<select id="select-harwareType-new">
			<option>Select</option>

			<?php

				$row=0;
				while($row < sizeof($this->_data['addHardwareType'])){
					echo "<option>" . $this->_data['addHardwareType'][$row]['EquipType'] . "</option>";
					$row++;
				}

			?>

		</select>

		<p>What tier is this model under?</p>

		<select id="select-tier-new">
			<option>Select</option>

			<?php

				$row=0;
				while($row < sizeof($this->_data['addTier'])){
					echo "<option>" . $this->_data['addTier'][$row]['Tier'] . "</option>";
					$row++;
				}

			?>

		</select>

	</div> -->

<!-- Modal Scripts -->

	<script type="text/javascript">

		var selectHardwareType = "";
		var selectManuf = "";
		var selectTier = "";
		var isMaster = false;

		var modal = document.getElementById('addHardwareInformation-modal');

		var span = document.getElementsByClassName("close")[0];

		span.onclick = function() {
		    modal.style.display = "none";
		}

		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}


		$('#selectHW').click(function(event){

			var hardwareType = document.getElementById('hardwareType').value;
			var manufacturer = document.getElementById('manufacturer').value;
			var tier = document.getElementById('tier').value;

			if(hardwareType != 'Select' && manufacturer != 'Select' && tier != 'Select'){

				$.ajax({
					type: 'GET',
					url: '/_apps/track1.5/php/addHardwareInformation.php',
					data: 'hardwareType=' + hardwareType + '&manufacturer=' + manufacturer + '&tier=' + tier,
					dataType: 'html',
					success: function(html){
						$('#hwInfo-body').html(html);
						modal.style.display = "block";
					},
					error: function(){
						alert('fail');
					}
				});

				event.preventDefault();

			}

		});

		

		$('#createNewHW').click(function(event){

			var newModel = document.getElementById('newModel').value;
			var newManuf = document.getElementById('newManuf').value;

			if(newModel != "" && newManuf == ""){
				var getNewModel = $("#model-modal").dialog('open');
				event.preventDefault();
			}else if(newModel == "" && newManuf != ""){

				$.ajax({
					type: 'GET',
					url: '/_apps/track1.5/php/addManufacturer.php',
					data: 'manufacturer=' + newManuf,
					success: function(data){
						alert(data);
					},
					error: function(){
						alert('fail');
					}
				});

				event.preventDefault();

			}else if(newModel != "" && newManuf != ""){
				var getnewHardware = $('#newHW-modal').dialog("open");
				event.preventDefault();
			}

		});



	</script>

</body>

</html>