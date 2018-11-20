<!DOCTYPE HTML>
<html>
<head>

	<meta http-equiv="Content-Type" charset="utf-8">
	<title><?php echo $title ?></title>

	  	<link rel="stylesheet" type="text/css" href="/_apps/track1.5/css/styles.css">

		<!-- Google Font -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
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

			 <script>
	 		    $(function() {
	 		        $( ".datefield" ).datepicker();
	 		    });
	 		</script>

</head>

<body>

	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

	<form class="left custom-fixed">

		<h1>Report Hardware by Location</h1>

		<fieldset>
			<div>
				<label>Select Location</label>
				<select name="locationSelection" id="locationSelectionField">
					<option>Select</option>

					<?php

						$row=0;
						while($row < sizeof($this->_data['locations'])){
							echo "<option>" . $this->_data['locations'][$row]['LocationName'] . "</option>";
							$row++;
						}

					?>

				</select>
			</div>

			<br />
			<label><b>OR</b></label>
			<br />

			<div>
				<label>Enter Cost Center</label>
				<input type="text" name="costCenter" id="costCenterInputField" />
			</div>
		</fieldset>

		<div>
			<input type="submit" id="submit" value="Submit" />
		</div>

	</form>

	<div id="report-results" style="overflow: auto; margin-left: 35%;">
	</div>

	<div id="viewDetail-modal">
	</div>

	<script type="text/javascript">

		$("#submit").click(function(event){
			var location = document.getElementById('locationSelectionField').value;
			var costCenter = document.getElementById('costCenterInputField').value;

			console.log(location);
			console.log(costCenter);

			if(location != 'Select' || costCenter != ''){
				$.ajax({
					type: 'GET',
					url: '/_apps/track1.5/php/reportHardware.php',
					data: 'type='+'location'+'&location='+location+'&costCenter='+costCenter,
					dataType: 'html',
					success: function(html){
						$("#report-results").html(html);
					},
					error: function(){
						alert('fail');
					}
				});

			}else{
				alert("You must select a location or enter a cost center");
			}

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
			$.ajax({
				type: 'GET',
				url: '/_apps/track1.5/php/getHardwareDetail.php',
				data: 'assetNumber='+assetNumber,
				dataType: 'html',
				success: function(html){
					$('#viewDetail-modal').html(html);
					$('#viewDetail-modal').dialog('open');
				},
				error: function(){
					alert('fail');
				}
			});
		}

	</script>


	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-id="locationSelectionField" data-text="Next" data-options="tip_location: top; prev_button: false">
              <h1>Choose a location</h2>
                <p>Select a location to find hardware assets in that location.</p>
            </li>
            <li data-id="costCenterInputField" data-text="Next">
              <h1>OR...Enter in a cost center</h2>
                <p>If you don't know the location name but you have the cost center number, then enter that here.</p>
            </li>
            <li data-id="submit" data-text="End" data-prev-text="Prev">
              <h1>Find records</h2>
                <p>Once you've selected a location (or just entered a cost center), then hit the submit button to generate the report.</p>
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

</body>

</html>
