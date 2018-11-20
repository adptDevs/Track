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

	<script type="text/javascript">

		$(document).ready(function(){

   			// Fade Toggle of the forms on the add software page
   			// $(".add-new-master").click(function(){
      //   		$("#add-newMaster-form").toggle(1000);
      //   		$("#add-currentMaster-form").toggleClass('faded');


      //   		// Change the toggle button and disable/enable current master form
      //   		if(document.getElementById('add-button').value == "Create New >"){
      //   			document.getElementById('add-button').value = "< Go Back";
      //   			$("#current-master :input").attr("disabled", true);
      //   		}else{
      //   			document.getElementById('add-button').value = "Create New >";
      //   			$("#current-master :input").attr("disabled", false);
      //   		}
   			// });

		});

	</script>


</head>

<body>

	<?php include HOME . DS . 'includes' . DS . 'menu.inc.php'; ?>

	<h1><div style ='font-family: Oleo Script;font-weight:bold; font-size: 250%; text-shadow: 7px 7px #000;text-align: center;color:#a9a9a9'>
	Add Software Record To Master</h1></div>


<!-- This is the add to master form -->
	<form id="add-currentMaster-form" style="width: 50%; margin: 0 auto;">
		<fieldset>

			<!-- Uses an AJAX function each time the user selects any option in the drop-down for publishers. -->
			<!-- When the user selects a publisher, it will genereate a drop-down of software titles under -->
			<!-- that publisher. You can find the function in "js/scripts.js" -->
			<label>Publisher:</label>
			<input id="SoftPub" onchange="changeTitleSelection('/_apps/track1.5/php/getTitle.php', this.value)" list="publisherList">
			<datalist id="publisherList">
			<?php

				$row=0;
				while($row < sizeof($this->_data['addpublisher'])){
					echo "<option>" . $this->_data['addpublisher'][$row]['Publisher'] . "</option>";
					$row++;
				}

			?>
			</datalist>

			<!-- Just like the function used for the publisher drop-down, when a title is selected, only the -->
			<!-- corresponding editions and versions will appear. Again, you can find this function in "js/scripts.js"-->
			<div id="titleSelection">
			</div>

			<div id="ESelection">
			</div>

			<div id="VSelection">
			</div>

			<!-- When the user hits the "Add To Master" button, it goes to a jQuery function down at the bottom of -->
			<!-- this page that uses this button's id as the selector -->
			<input type="submit" id="submit-master" value="Add To Master" />

		</fieldset>
	</form>


	<!-- Custom Modal Windows -->

	<div id="results-modal" class="modal3">
		<div class="viewDetail-modal4">
			<div class="modal-header">
				<span class="close">x</span>
				<h2>Results:</h2>
			</div>

			<div class="modal-body" id="message-body">
			</div>

			<div class="modal-footer">
			</div>
		</div>
	</div>

	<script type="text/javascript">

		var selectPub = "";
		var selectTitle = "";
		var selectEdition = "";
		var selectVersion = "";
		var isMaster = false;

		// // This function sends all the data from the "Add To Master" form to "php/addSoftwareToMaster.php" via AJAX to update the master software table 
		$('#submit-master').click(function(event){
			event.preventDefault();

			var pub = document.getElementById('SoftPub').value;
			var title = document.getElementById('SoftTitle').value;
			var edition = document.getElementById('SoftEdition').value;
			var version = document.getElementById('SoftVersion').value;

			if(pub != "" && title != "" && version != ""){
				$.ajax({
					type: "GET",
					url: '/_apps/track1.5/php/addSoftwareToMaster.php',
					data: "publisher=" + pub + "&title=" + title + "&edition=" + edition + "&version=" + version,
					dataType: "html",
					success: function(html){
						if(html == 'Success'){
							$("#message-body").html("<p style='color: #258E25;'>Successfully added software</p>");
							$("#results-modal").show().delay(2000).fadeOut();
						}else{
							$("#message-body").html("<p style='color: #660000;'>An error occured. The software was not added. Please try again</p>");
							$("#results-modal").show().delay(2000).fadeOut();
						}
					},
					error: function(){
						$("#message-body").html("<p style='color: #660000;'>Some unexpected happened. Please try again</p>");
						$("#results-modal").show().delay(2000).fadeOut();
					}
				});
			}
		});

	</script>

	<!-- //-->

	<!-- Joyride Help Boxes -->

		<ol class="joyride-list" data-joyride>
            <li data-button="next" data-options="tip_location: top; prev_button: false">
              <h1>Adding Software:</h2>
                <p>There two functions you can perform here: 1.) Add existing software to the master set or 2.) Create new software and then add it to the master set. First, let's go over adding existing software to the master set.</p>
            </li>
            <li data-id="SoftPub" data-text="Next">
              <h1>Add Existing Publisher:</h2>
                <p>Choose an alreade existing publisher from the drop-down. Then, you'll be able to choose its correlatng title, edition, and version.</p>
            </li>
            <li data-id="add-button" data-text="End">
              <h1>Adding A New Software part 1:</h2>
                <p>If a software publisher, title, edition, or version that you need does not exist in any of the drop-downs to the left, then you'll need to create it and put it in the database. If you need further help, then hit this button and click the 'Help' button again.</p>
            </li>
            <li data-id="add-newMaster-form" data-text="End">
              <h1>Adding A New Software part 2:</h2>
                <p>You can create a whole new software by filling out the publisher, title, edition, and version fields if it's a whole new software all together. However, if, for example, the software already exists in the database but there's a new version that you'll be using, then all you need to do is just enter the version name in the version field, hit the 'Add' button, and you'll be asked for what software title is this version under.</p>
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