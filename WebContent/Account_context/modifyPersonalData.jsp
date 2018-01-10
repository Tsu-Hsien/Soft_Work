<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="assets/js/bootstrap.js"></script>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<title>Insert title here</title>
<script>  
  $(document).ready(function(){                  
        $("#email222").blur(function(){  
            var num=$("#email222").val().length;  
            if(num<6){  
                 $("#tip111").html("<h2><font color=\"red\" size=\"2\">  too short</font></h2>");     
            }  
            else if(num>50){  
                 $("#tip111").html("<h2><font color=\"red\" size=\"2\">  too long</font></h2>");                   
            }  
            else{  
                $("#tip111").html("<h2><font color=\"green\" size=\"2\"> Accept</font></h2>");                  
            }  
        });
        $("#email2222").blur(function(){  
            var tmp=$("#email222").val();  
            var num=$("#email2222").val().length;  
            if($("#email2222").val()!=tmp){  
                $("#tip222").html("<h2><font color=\"red\" size=\"2\">  Wrong</font></h2>");                   
            }  
            else{  
                if(num>=6&&num<=50){  
                    $("#tip222").html("<h2><font color=\"green\" size=\"2\">  Correct</font></h2>");                      
                }                   
                else{  
                    $("#tip222").html("<h2><font color=\"red\" size=\"2\">  invalid</font></h2>");                             
                }                  
            }  
        });  
        $("#phone222").blur(function(){  
            var num=$("#phone222").val().length;  
            if(num<6){  
                 $("#tip333").html("<h2><font color=\"red\" size=\"2\">  too short</font></h2>");     
            }  
            else if(num>50){  
                 $("#tip333").html("<h2><font color=\"red\" size=\"2\">  too long</font></h2>");                   
            }  
            else{  
                $("#tip333").html("<h2><font color=\"green\" size=\"2\"> Accept</font></h2>");                  
            }  
        });
        $("#phone2222").blur(function(){  
            var tmp=$("#phone222").val();  
            var num=$("#phone2222").val().length;  
            if($("#phone2222").val()!=tmp){  
                $("#tip444").html("<h2><font color=\"red\" size=\"2\">  Wrong</font></h2>");                   
            }  
            else{  
                if(num>=6&&num<=50){  
                    $("#tip444").html("<h2><font color=\"green\" size=\"2\">  Correct</font></h2>");                      
                }                   
                else{  
                    $("#tip444").html("<h2><font color=\"red\" size=\"2\">  invalid</font></h2>");                             
                }                  
            }  
        }); 
            $("#btn").click(function(){  
                var flag=true;  
                var email222=$("#email222").val();  
                var email2222=$("#email2222").val();  
                var phone222=$("#phone222").val(); 
                var phone2222=$("#phone2222").val(); 
                var num1=$("#email222").val().length;  
                var num2=$("#phone222").val().length;  
                if(email222!=email2222||num1<6||num2<6||num1>50||num2>50||phone222!=phone2222){  
                    flag=false;  
                }  
                else{  
                    flag=true;  
                }  
                if(flag){                     
	                $.ajax({  
	                	type:"POST",
	                    url:"modifyPersonalDataServlet",  
	                    data:{email222:$("#email222").val(),
	                    	  phone222:$("#phone222").val()}, 
	                    dataType: "json",
	                    success:function(e){      
	                    	console.log(e.flag);
	                        if(e.flag==1){  
	                            $("#tip444").show().html("<h2><font color=\"green\" size=\"3\">  Edit Success!</font></h2>");  
	                            $("#oldpassword").val("");  
	                            $("#password1").val("");  
	                            $("#password2").val("");  
	                            $("#tip111").empty();  
	                            $("#tip222").empty();  
	                            $("#tip333").empty();  
	                            $("#tip444").delay(2000).hide(0);          
	                        }  
	                        else{  
	                            $("#tip444").show().html("<h2><font color=\"red\" size=\"3\">  OldPassword is Wrong!</font></h2>");  
	                        }                                       
	                       }  
	                });  
	            }  
            else{  
                  
                $("#tip444").show().html("<h2><font color=\"red\" size=\"3\">  Please follow the tips!</font></h2>");  
            }  
            });                    
      });  
      </script>  
</head>
<body>
	<ul class='xform-ul'>
		<li>
			<div class='form-label'>新的E-mail :</div>
			<div class='form-input'>
				<input type='email222' id="email222" name="email222" />
				<div style="display: inline" id="tip111"></div>
			</div>
		</li>
		<li>
			<div class='form-label'>再輸入一次 :</div>
			<div class='form-input'>
				<input type='email222' id="email2222" name="email2222" />
				<div style="display: inline" id="tip222"></div>
			</div>
		</li>
		<li>
			<div class='form-label'>新的phone :</div>
			<div class='form-input'>
				<input type='password' id="phone222" name="phone222">
				<div style="display: inline" id="tip333"></div>
			</div>
		</li>
		<li>
			<div class='form-label'>再輸入一次 :</div>
			<div class='form-input'>
				<input type='password' id="phone2222" name="phone2222">
				<div style="display: inline" id="tip444"></div>
			</div>
		</li>
		<li class="text-center">
			<button type = "submit">
				<div id="btn">Modify</div>
			</button>
		</li>

	</ul>
	
</body>
</html>