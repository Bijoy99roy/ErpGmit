<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var b=[];
var c=[];
var d=[];
$(document).ready(function(){
  $("button").click(function(){
   var a= $("#we").val();
   
   b.push(a);
   c.push(a);
   d.push(a);
   $("#r").val(b);
  });
  $("#send").click(function(){
	  /*
	  $.ajax({
		    type : "POST",
		    url : "/getvalues",
		  //  contentType: "application/x-www-form-urlencoded",
		    data : JSON.stringify({
		        firstArray : b,
		        secondArray:c,
		        thirdArray:d
		    }),
		    success : function(response) {
		       // do something ... 
		    },
		    error : function(e) {
		       alert('Error: ' + e);
		       console.log(e);
		    }
		}); 
		*/
		var config = {
			   // transformRequest : angular.identity,
			    headers: { "Content-Type": undefined }
			}
		$http.post('/getvalues', {
	        firstArray : b,
	        secondArray:c,
	        thirdArray:d
	    }, config).success(function(data,status) {
		    $scope.loader.loading = false;
		})
	  });
});
</script>
</head>
<body>
<button>Set the value of the input field</button>
<form action="getvalues" method="post" id="myform"  accept-charset=utf-8>
<p>Name: <input type="text" name="user" id="we"></p>
<input type="text" name="user" id="r">


<input type="submit" id="send">
</form>
</body>
</html>