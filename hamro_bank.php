<?php include_once("header.php"); ?>

<link rel="stylesheet" type="text/css" href="css/chat2.css" />
<div class="container"id="1" style="padding-top: 30px;">
	<div class="row well"id="2" >
		
<div class="chat_header_div row" style="padding-top: 20px; padding-bottom: 20px;"><div class="col-lg-4"><span class="chat_header_text" >
Hamro Assistant</span></div><div class="col-lg-1 pull-right"><button class="btn btn-primary"  id="chatRefresh"><span class="glyphicon glyphicon-refresh"></span></button></div></div>

		<div id="3" style="padding-top: 15px;">
			<ul id="chatOutput" class="chat_container" style="list-style-type: none;">

			</ul>
		</div>
		<div class="row" ng-app="myapp" ng-controller="BrijController">
		<form name="chat_form" novalidate>
		<div class="col-lg-11">
			<input type="text" name="message" autocomplete="off" id="message" class="form-control" ng-model="message" placeholder="type here" required/></div>
		<div class="col-lg-1 pull-right">
			<button type="submit" id="send_message" class="btn" ng-disabled="chat_form.message.$invalid"><img src="images/send2.png" height="25" alt="send"/></button>
		</div>
		</form>
		</div>
	</div>
</div>

<script>
var myApp = angular.module("myapp", []);
myApp.controller("BrijController", function($scope,$http) {

	});
$(document).ready(function(){
	// $("#chatRefresh").click();
	$("#send_message").click(function(){
		var message=$("#message").val();
		$("#message").val("")
		$("#chatOutput").append("<li class='user-message' style='float:right;text-align:right;'>"+message+"</li>")
		var userid=$("div.userid").attr("id");
		$.ajax({
				type: 'POST',
				// url: 'http://localhost:5005/webhooks/chatroom/conversations/695ba1ff-4bfc-422f-882b-e8c0d8bdb00b/log',
				url: 'http://localhost:5005/webhooks/rest/webhook?stream=false&token=token',
				data: JSON.stringify({"sender": "cmabajimaya@gmail.com","message": message}),
				headers:{
					"Content-Type":"application/json"
					
				},
				dataType: 'json',
            contentType: 'application/json',
				success  : function (data)
				{
					console.log({data})
					
					// alert(data);
					data.forEach(e=>{
						$("#chatOutput").append("<li class='bot-message' style='float:left;'>"+e.text+"</li>")

					})
					var element=document.getElementById("chatOutput")
					element.scrollTop=element.scrollHeight-element.clientHeight;
					// $("#chatOutput").scroll({top:$("#chatOutput").scrollheight,behaviour:"smooth"})
				}
			});
	});

});
</script>

<?php include_once("footer.php"); ?>
