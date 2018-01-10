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







<!-- 不改 styles -->
<link href="style.css" rel="stylesheet" />

<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="CommodityPageCss.css" rel="stylesheet">
<script src="assets/js/shop.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<title>Insert title here</title>
<script>  
  $(document).ready(function(){                  
      $("#oldpassword").blur(function(){  
              var param=$("#oldpassword").val();  
              $.ajax({  
            	  type:"POST",
                  url:"CheckoldPass",  
                  data:{oldpassword:$("#oldpassword").val()}, 
                  dataType: "json",
                  success:function(e){  
                	  
                      if(e.flag==1){                              
                           $("#tip1").html("<h2><font color=\"green\" size=\"2\">  Correct</font></h2>");  
                      }   
                      else{                                   
                          $("#tip1").html("<h2><font color=\"red\" size=\"2\">  Wrong</font></h2>");  
                      }
                  },
                  error:function(jqXHR, exception){
            	  console.log(jqXHR.status);
              }
                	  
              });  
         });  
        $("#password1").blur(function(){  
            var num=$("#password1").val().length;  
            if(num<6){  
                 $("#tip2").html("<h2><font color=\"red\" size=\"2\">  too short</font></h2>");     
            }  
            else if(num>18){  
                 $("#tip2").html("<h2><font color=\"red\" size=\"2\">  too long</font></h2>");                   
            }  
            else{  
                $("#tip2").html("<h2><font color=\"green\" size=\"2\"> Accept</font></h2>");                  
            }  
        }) ;  
        $("#password2").blur(function(){  
            var tmp=$("#password1").val();  
            var num=$("#password2").val().length;  
            if($("#password2").val()!=tmp){  
                $("#tip3").html("<h2><font color=\"red\" size=\"2\">  Wrong</font></h2>");                   
            }  
            else{  
                if(num>=6&&num<=18){  
                    $("#tip3").html("<h2><font color=\"green\" size=\"2\">  Correct</font></h2>");                      
                }                   
                else{  
                    $("#tip3").html("<h2><font color=\"red\" size=\"2\">  invalid</font></h2>");                             
                }                  
            }  
        });  
            $("#btn").click(function(){  
                var flag=true;  
                var old=$("#oldpassword").val();  
                var pass=$("#password1").val();  
                var pass2=$("#password2").val();  
                var num1=$("#password1").val().length;  
                var num2=$("#password2").val().length;  
                if(num1!=num2||num1<6||num2<6||num1>18||num2>18||pass!=pass2){  
                    flag=false;  
                }  
                else{  
                    flag=true;  
                }  
                if(flag){                     
	                $.ajax({  
	                	type:"POST",
	                    url:"ChangePassword",  
	                    data:{oldpassword:$("#oldpassword").val(),
	                    	  	newpassword:$("#password1").val()}, 
	                    dataType: "json",
	                    success:function(e){      
	                    	console.log(e.flag);
	                        if(e.flag==1){  
	                            $("#tip4").show().html("<h2><font color=\"green\" size=\"3\">  Edit Success!</font></h2>");  
	                            $("#oldpassword").val("");  
	                            $("#password1").val("");  
	                            $("#password2").val("");  
	                            $("#tip1").empty();  
	                            $("#tip2").empty();  
	                            $("#tip3").empty();  
	                            $("#tip4").delay(2000).hide(0);          
	                        }  
	                        else{  
	                            $("#tip4").show().html("<h2><font color=\"red\" size=\"3\">  OldPassword is Wrong!</font></h2>");  
	                        }                                       
	                       }  
	                });  
	            }  
            else{  
                  
                $("#tip4").show().html("<h2><font color=\"red\" size=\"3\">  Please follow the tips!</font></h2>");  
            }  
            });                    
      });  
      </script>  
</head>
<body>
	<ul class='xform-ul'>
		<li>
			<div class='form-label'>Existing password :</div>
			<div class='form-input'>
				<input type='password' id="oldpassword" name="oldpassword" />
				<div style="display: inline" id="tip1"></div>
			</div>
		</li>
		<li>
			<div class='form-label'>New password :</div>
			<div class='form-input'>
				<input type='password' id="password1" name="password1">
				<div style="display: inline"  id="tip2"></div>
				</div>
		</li>
		<li>
			<div class='form-label'>Re-enter password :</div>
			<div class='form-input'>
				<input type='password' id="password2" name="password2"
					placeholder="must match with the first" />
				<div style="display: inline" id="tip3"></div>
				</div>
		</li>
		<li class="text-center">
			<button type = "submit">
				<div id="btn">Modify</div>
			</button>
		</li>
		<li class="text-center">
			<div id="tip4"></div>
		</li>
	</ul>
	
</body>
</html>