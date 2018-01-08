<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>




<script src="assets/js/bootstrap.js"></script>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />







<!-- 不改 styles -->
<link href="style.css" rel="stylesheet" />

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script>  
  $(document).ready(function(){
	  $("#btn").click(function(){  
          var flag=true;  
          var email=$("#email").val();  
              $.ajax({  
              	type:"POST",
                  url:"ChangeInformation",  
                  data:{email:$("#email").val()}, 
                  dataType: "json",
                  success:function(e){      
                  	console.log(e.email);
                          $("#tip4").show().html("<h2><font color=\"green\" size=\"3\">  Edit Success!</font></h2>");  
                          $("#email").val(e.email);  
                  }
                        
              });  
           
                        
});  
  });
  
  </script>
</head>
<body>
	<ul class='xform-ul'>
		<li>
			<div class='form-label'>email :</div>
			<div class='form-input'>
				<input type='email' id="email" name="email" />
				<div style="display: inline" id="tip1"></div>
			</div>
		</li>

		<li class="text-center">
			<button type="submit">
				<div id="btn">Modify</div>
			</button>
		</li>
		<li class="text-center">
			<div id="tip4"></div>
		</li>
	</ul>
</body>
</html>