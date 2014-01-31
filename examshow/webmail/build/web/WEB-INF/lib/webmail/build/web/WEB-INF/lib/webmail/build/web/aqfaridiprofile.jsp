<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
                <script type="text/javascript" src="assets/js/bootstrap.js"></script>
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
<h1 class="brand" style="font-weight:bold;">Admin Panel</h1>
<form action="logout" method="post" class="pull-right">
<button class="btn btn-primary" > logout </button>
</form>
<p class="pull-right" style="color:white;">
<br />
<%
 

            String uname = (String)session.getAttribute("user");
             if(uname==null)
                {
                    response.sendRedirect("adminpanel.jsp");
                }
            else
            {
                   out.println("<b> Welcome , "+uname+"</b>");
            }

   
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
                    <li class="active">
                    <a href="#" data-toggle="tab">Admin Home</a>
                    </li>
                    <li>
                    <a href="#student" data-toggle="tab">Student Detail</a>
                    </li>
                     <li>
                    <a href="#faculty" data-toggle="tab">Faculty Detail</a>
                    </li>
                    <li>
                    <a href="#subject" data-toggle="tab">Subject Detail</a>
                    </li>
                    <li>
                    <a href="#changepass" data-toggle="tab">Change Password</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span7 pull-right" >
            <div id="myTabContent" class="tab-content">
<div id="student" class="tab-pane

<c:if test='${not empty param["student"]}'>
active
</c:if>

     ">


 <c:if test='${not empty param["studentSuccess"]}'>
 <p style="color:green;font-weight:bold;">Deletion is successful.</p>

</c:if>

   <%
                                Connection con=null;
                                Statement st=null;
                                ResultSet rs=null;
                                Config c = new Config();
                                con = c.getcon();
                                st=con.createStatement();

                                try
                                {
                    
                                     String studentid="";
                                     String q="select * from student";
                                      st=con.createStatement();
                                     rs=st.executeQuery(q);
%>
 <div class="modal-header">
                    <h3 id="myModalLabel"><center>Student Details.</center></h3>
</div>
 <table class=" table table-bordered">

     <tr>
         <td><strong>Student ID</strong></td>
         <td><strong>Student Name</strong></td>
                        <td><strong>Email</strong></td>
                        <td><strong>Mobile</strong> </td>
                        <td colspan="2">Delete Student</td>
                    </tr>
     <%
             while(rs.next())
             {
             %>

             <tr><td>

                     <%
out.print(rs.getString("studentid"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("studentname"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("email"));
%>

 </td><td>

                     <%
out.print(rs.getString("mobile"));
%>


                 </td>

              <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("studentid"));%>&who=student">Delete</a>
              </td></tr>

             <% }
                 %>
                </table>
  
  

                                <% 
                                }
                                catch(Exception e){}
                  %>


                  </div>



<div id="faculty" class="tab-pane 
  <c:if test='${(not empty param["faculty"])}'>
active
</c:if>


     ">
 <c:if test='${not empty param["facultySuccess"]}'>
 <p style="color:green;font-weight:bold;">Deletion is successful.</p>

</c:if>
   <%
                         
                                try
                                {

                                     String studentid="";
                                     String q="select * from faculty";
                                      st=con.createStatement();
                                     rs=st.executeQuery(q);
%>
 <div class="modal-header">
                    <h3 id="myModalLabel"><center>Faculty Details.</center></h3>
</div>
 <table class=" table table-bordered">

     <tr>
         <td><strong>Faculty ID</strong></td>
         <td><strong>Faculty Name</strong></td>
                        <td><strong>Email</strong></td>
                        <td><strong>Phone</strong> </td>
                        <td colspan="2"> Delete Faculty</td>
                    </tr>
     <%
             while(rs.next())
             {
             %>

             <tr><td>

                     <%
out.print(rs.getString("facultyid"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("facultyname"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("email"));
%>

 </td><td>

                     <%
out.print(rs.getString("mobile"));
%>


                 </td>

              <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("facultyid"));%>&who=faculty">Delete</a>
              </td></tr>

             <% }
                 %>
                </table>



                                <%
                                }
                                catch(Exception e){}
                  %>
                  </div>






<div id="subject" class="tab-pane
<c:if test='${not empty param["subject"]}'>
active
</c:if>

">
 <c:if test='${not empty param["subjectSuccess"]}'>
 <p style="color:green;font-weight:bold;">Deletion is successful.</p>

</c:if>


   <%

                                try
                                {
                                     String studentid="";
                                     String q="select * from subjects";
                                      st=con.createStatement();
                                     rs=st.executeQuery(q);
%>
 <div class="modal-header">
                    <h3 id="myModalLabel"><center>Subject Details.</center></h3>
</div>
 <table class=" table table-bordered">

     <tr>
         <td><strong>Subject Code</strong></td>
         <td><strong>Subject Name</strong></td>
                        <td colspan="2"> Delete Subject</td>
                    </tr>
     <%
             while(rs.next())
             {
             %>

             <tr><td>

                     <%
out.print(rs.getString("subjectcode"));
%>
                 </td>
                 <td>

                     <%
out.print(rs.getString("subjectname"));
%>
                 </td>


              <td><i class="icon-remove"></i><a href="delete?user=<% out.print(rs.getString("subjectcode"));%>&who=subject">Delete</a>
              </td></tr>

             <% }
                 %>
                </table>



                                <%
                                }
                                catch(Exception e){}


                                con.close();
                  %>
                  </div>



 <div id="changepass" class="tab-pane 

<c:if test='${not empty param["Success"]}'>
 active
</c:if>
 <c:if test='${not empty param["Failed"]}'>
 active
</c:if>



 ">
<form  action ='<%= response.encodeURL("adminpasschange") %>' id="contact-form4" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="passwd">Current Password</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-book"></i></span>
                                                        <input type="password" class="input-large" name="passwd" id="passwd" placeholder="Current Password" required="true" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="apasswd">New Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="password" class="input-large" name="apasswd" id="apasswd" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                                                <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Re Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpassword" required="true" placeholder="New Password"/>
                                                                              </div>
                                                                            </div>
                                                    </div>

                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
<c:if test='${not empty param["Success"]}'>
 <p style="color:green;font-weight:bold;">Your Password is changed successfully.</p>
</c:if>

<c:if test='${not empty param["Failed"]}'>
 <p style="color:red;font-weight:bold;">Wrong current Password.</p>

</c:if>
                                                      <button type="submit" class="btn btn-success">Submit</button>
                                                                        </div>
                                                                                </div>


</form>

                </div>







   </div>
                </div>
    </div></div>
 <%@include file="footer.jsp" %>
</body>
</html>