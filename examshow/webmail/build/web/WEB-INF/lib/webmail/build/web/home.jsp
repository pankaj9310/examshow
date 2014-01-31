<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home ExamShow</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                <script type="text/javascript" src="assets/js/modal.js"></script>
		<script type="text/javascript" src="script1.js"></script>
<style type="text/css">
         .navbar-inner{
			 background:#000;
			 border-bottom:5px solid #007AF4;
			 height:70px;

			 }
			.navbar-inner .brand{color:#FFF}

</style>
</head>


<body>

<div class="navbar">
<div class="navbar-inner">
    <div class="container">

<a href="#" class="brand"> <img src="./assets/img/examshow.png" alt="Exam Show" width="100px" height="70px"/></a>
<br/>
<h1 class="brand" style="font-weight:bold;">Exam Show</h1>
<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > logout </button>
</form>
<p class="pull-right" style="color:white;">
<br />
<%
   String uname = session.getAttribute("username").toString();
    out.println("<b> Welcome , "+uname+"</b>");
%>
&nbsp;&nbsp;

</p>

</div>
</div>

</div>
<div class="container well">
    <div class="row">
        <div class="span2">
       
            <ul class="nav nav-tabs nav-stacked nav-justified"  style='background-color:white;'>
                    <li>
                    <a href="#" data-toggle="tab">Home</a>
                    </li>
                    <li>
                    <a href="#" data-toggle="tab">Online Exam System</a>
                    </li>
                    <li>
                         <a href="./<%=session.getAttribute("which")%>profile.jsp">Profile</a>
                    </li>
            </ul>
        </div>

        <div class="span10">
            <center>    <img src="assets/img/back.png" alt="Online Exam System" height="300px" width="400px"/>  </center>
        <p style="font-weight: bold;font-size:20px;color:#808080;line-height: 25px;">
            <bold style="color:black;">On-line Exam System</bold> is very useful for Educational Institute to prepare an exam, safe the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students.
        </p>
        <p style="font-weight: bold;font-size:20px;color:#808080;line-height: 25px;"  >
The effective use of "On-line Exam System", any Educational Institute or training centers can be use it to develop their strategy for putting the exams, and for getting better results in less time.
        </p>
        </div>
        
    </div>
</div>

 <%@include file="footer.jsp" %>
</body>

</html>