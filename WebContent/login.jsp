<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">

<meta http-equiv="expires" content="0"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="pragma" content="no-cache"> 

<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700|Archivo+Narrow:400,700" rel="stylesheet" type="text/css">
<link href="default.css" rel="stylesheet" type="text/css" media="all" />

<title>Login Page</title>
</head>


<script language="JavaScript">


function checkNameAndPassIsEmptyOrNot() 
{ 
	
	if (FORM1.userIDText.value == "" && FORM1.userPassText.value == "") 
	{ 
		
		alert("�п�J�b��/�K�X");
	}
	else if (FORM1.userIDText.value == "") 
	{ 
		
		alert("�п�J�b��"); 
	}
	else if (FORM1.userPassText.value == "") 
	{ 
		alert("�п�J�K�X");
	}
	else if (FORM1.userIDText.value != "" && FORM1.userPassText.value != "") 
	{ 
		FORM1.submit();
	}
	else
	{
		alert("something wrong!");
	}
} 

</script>

<body>

<%

String g_userID = (String)request.getSession().getAttribute("currentUserID");
//String g_userPass = (String)request.getSession().getAttribute("currentUserPass");
String g_currentState = (String)request.getSession().getAttribute("currentState");


 // out.println("g_tbxName: "+g_tbxName);
 // out.println(g_tbxEmail);


//�P�_�O�_���\�qTime������o��, �w�M�w������D���٬O�ӭp�⵪��
//�Y���\���o���, �hTime����N���|�Onull��
// if (g_tbxName == null)
if ( g_userID == null || g_userID.equals("") || g_currentState.equals("") || g_currentState == null || g_currentState.equals("NoAccount") || g_currentState.equals("ErrorPass") || g_currentState.equals("PleaseLogin"))
{
	System.out.println("��e�n�J���A:"+g_currentState); 
	//window.alert(g_currentState);

%>
<div id="logo" class="container">
	<h1><a >Virtual Lab Login Page</a></h1>
</div>
<div id="menu-wrapper">
	<div id="menu" class="container">
		<ul>
			<li class="on"><a class="myMOUSE">Login...</a></li>
			<li ><a href="logoutServlet">Enroll...</a></li>
		</ul>
	</div>
</div>
<div id="tab">
	<div id="loginpage" class="show" style="margin:0px auto;">
			<p>${currentState} </p>
			<FORM action="loginServlet" method=post name=FORM1>	
				<span style="margin:0px auto;">
				<P>�b�� :  <INPUT type=text name=userIDText value=""></P><BR />
				<P>�K�X :  <INPUT type=password name=userPassText value=""></P><BR />
				</span>
				<span style="float:right">
				<INPUT type="button" value="�e�X" name=button1 onClick="checkNameAndPassIsEmptyOrNot()" />
				<INPUT type="reset" value="�M��" name=reset1 />
				</span>
     		</FORM>
    		
	</div>
	<div id="loginpage" class="hide" style="margin:0px auto;">
		
			#default...
		
	</div>
	
</div>

<%
}
else
{
	response.sendRedirect("loginServlet");
	
}
%>

</body>
</html>