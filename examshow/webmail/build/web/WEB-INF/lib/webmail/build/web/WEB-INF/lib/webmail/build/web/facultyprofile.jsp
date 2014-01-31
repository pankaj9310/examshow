<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Faculty Profile ExamShow</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>

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
  <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script>

    <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                <script type="text/javascript" src="assets/js/modal.js"></script>
		<script type="text/javascript" src="script1.js"></script>
 <script type="text/javascript">
tinymce.init({
        mode : "specific_textareas",
        editor_selector : "mceEditor",
        menubar: false
});</script>







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
             String uname = (String)session.getAttribute("username");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
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
                    <li>
                    <a href="./home.jsp" >Home</a>
                    </li>
                    <li>
                    <a href="#profile" data-toggle="tab">Profile</a>
                    </li>
                    <li>
                    <a href="#addsub" data-toggle="tab">Add Subject</a>
                    </li>
                    <li>
                    <a href="#makepaper" data-toggle="tab">Make Paper</a>
                    </li>
                    <li>
                    <a href="#updatepaper" data-toggle="tab">Update Paper</a>
                    </li>
                    <li>
                    <a href="#viewpaper" data-toggle="tab">View Paper</a>
                    </li>
                    <li>
                    <a href="#viewresult" data-toggle="tab">View Result</a>
                    </li>
                    <li>
                    <a href="#appendpaper" data-toggle="tab">Append Paper</a>
                    </li>
                    <li>
                    <a href="#deletepaper" data-toggle="tab">Delete Paper</a>
                    </li>

                    <li>
                    <a href="#notice" data-toggle="tab">Notice</a>
                    </li>
                    <li>
                    <a href="#ChangPassword" data-toggle="tab">Change Password</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span10 pull-right">
            <div id="myTabContent" class="tab-content">
 <div id="home" class="tab-pane 
      
<c:if test='${!((not empty param["ExamExists"]) || (not empty param["ErrorResult"]) || (not empty param["ErrorUpdate"]) || (not empty param["ErrorAppend"]) || (not empty param["ErrorDel"]) || (not empty param["ErrorMake"]) || (not empty param["ErrorPaper"])) }'>
active
</c:if>
      ">
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

<div id="profile" class="tab-pane fade in">

<h1 style='color:#3399FF;'> Personal Details : </h1>
 <%
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        Config c = new Config();
        con = c.getcon();
        st=con.createStatement();

    try{
        
        String name="",sem="",email="",mobile="",sex="",dob="";
            String userid = session.getAttribute("facultyid").toString();
            String q = "select * from faculty where facultyID= '"+userid+"'";
            st =con.createStatement();
            rs=st.executeQuery(q);
            if(rs.next())
            {
                name = rs.getString("facultyname");
                email = rs.getString("email");
                mobile = rs.getString("mobile");
                dob = rs.getString("dob");
                sex = rs.getString("sex");
            }
			out.println("<table class='table table-hover' style='background-color:white;color:#808080;' >");

        %>
		     <tr style="font-weight:bold;">
                              <td>Name : </td>
                              <td><%=name%></td>
                          </tr>
				
			<tr style="font-weight:bold;">
                              <td>Email : </td>
                              <td><%=email%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Mobile: </td>
                              <td><%=mobile%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Date of Birth : </td>
                              <td><%=dob%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Gender : </td>
                              <td><%=sex%></td>
                          </tr>
			<%
			out.println("</table>");
                                }catch(Exception e)
                                        {}

        con.close();
			%>
            </div>


                <div id="addsub" class="tab-pane">

                    <form action="addsubject" id="contact-form" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="subname">Subject Name</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-book"></i></span>
                                                        <input type="text" class="input-large" name="subname" id="subname" placeholder="Subject Name" required="true" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="subject">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-success">Submit</button>
                                                                        </div>
                                                                                </div>
</form>

                </div>
                <div id="makepaper" class="tab-pane
<c:if test='${(not empty param["ExamExists"]) || (not empty param["ErrorMake"])}'>
active
</c:if>






                     ">
<c:if test='${not empty param["ExamExists"]}'>
 <p style="color:red;font-weight:bold;">Exam already Exists.</p>
</c:if>

   <c:if test='${not empty param["ErrorMake"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>
                    <form action="examsentry" id="contact-form" class="form-horizontal" method="post">
                              <div class="control-group">
                                                                              <label class="control-label" for="subject">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
                                                                            </div>
                                 </div>

                         <div class="control-group">
                                                                              <label class="control-label" for="sdate">Start Date</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="sdate" id="sdate" required="true" value="YYYY-MM-DD HH:MM::SS"/>
                                                                              </div>
                                                                            </div>
                                 </div>
                         <div class="control-group">
                                                                              <label class="control-label" for="edate">End Date</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="edate" id="edate" required="true" value="YYYY-MM-DD HH:MM::SS"/>
                                                                              </div>
                                                                            </div>
                                 </div>
                        <div>
                         <textarea class="mceEditor"  name="tarea" rows="15" cols="50" placeholder="Question" ></textarea>
                        </div>


<br/>

                             <center> <button type="submit" class="btn btn-success">Submit</button></center>
                             
                    </form>
<br/>
                             <br/>
                </div>
               <div id="updatepaper" class="tab-pane

         <c:if test='${not empty param["ErrorUpdate"]}'>
active
</c:if>

                    ">
   <c:if test='${not empty param["ErrorUpdate"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>
                    <form action="updatepaper.jsp" id="contact-form" class="form-horizontal" method="post">

                          <div class="control-group">
                                                  <label class="control-label" for="subject">Subject Code</label>
                                                  <div class="controls">
                                                      <div class="input-prepend">
                            <span class="add-on"><i class="icon-barcode"></i></span>
                                                    <input type="text" class="input-large" name="sbcode" id="sbcode" required="true" placeholder="Subject Code"/>
                                                  </div>
                                                </div>
                                 </div>


                          <div class="control-group">
                                              <label class="control-label" for="qno">Question No</label>
                                              <div class="controls">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-barcode"></i></span>
                                                <input type="text" class="input-large" name="qno" id="qno" required="true" placeholder="Subject Code"/>
                                              </div>
                                            </div>
                                 </div>


                        
                         <center> <button type="submit" class="btn btn-success">Update</button></center>
                    </form>

                </div>
         <div id="viewpaper" class="tab-pane
 <c:if test='${not empty param["ErrorPaper"]}'>
active
</c:if>

              ">
             
   <c:if test='${not empty param["ErrorPaper"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>

<form action="viewpaper.jsp" id="contact-form" class="form-horizontal" method="post">

						   
                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-primary">View Paper</button>
                                                                        </div>
                                                                                </div>
</form>

                </div>


         <div id="appendpaper" class="tab-pane
     <c:if test='${not empty param["ErrorAppend"]}'>
 active
</c:if>          
              ">

   <c:if test='${not empty param["ErrorAppend"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>
<form action="makepaper.jsp" id="contact-form" class="form-horizontal" method="post">


                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-primary">Append Paper</button>
                                                                        </div>
                                                                                </div>
</form>

                </div>




         <div id="viewresult" class="tab-pane 
  <c:if test='${not empty param["ErrorResult"]}'>
 active
</c:if>            
              
              
              ">
 <c:if test='${not empty param["ErrorResult"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>

<form action="viewresult.jsp" id="contact-form" class="form-horizontal" method="post">

						 
                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-primary">View Result</button>
                                                                        </div>
                                                                                </div>
</form>

                </div>












            <div id="deletepaper" class="tab-pane
  <c:if test='${not empty param["ErrorDel"]}'>
      active
</c:if>                
                 
                 ">

   <c:if test='${not empty param["ErrorDel"]}'>
 <p style="color:red;font-weight:bold;">You are not authorized user</p>
</c:if>
<form action="delpaper" id="contact-form" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="sbcode">Subject Code</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-book"></i></span>
                                                        <input type="text" class="input-large" name="sbcode" id="sbcode" placeholder="Subject Code" required="true" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="qno">Question Number</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="qno" id="qno" required="true" placeholder="Question Number"/>
                                                                                 </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-danger">Delete</button>
                                                                        </div>
                                                                                </div>
</form>


                </div>

                  <div id="notice" class="tab-pane fade in">

                    <form action="servnotice" id="contact-form" class="form-horizontal" method="post">

                        Notice:<br />
                        <textarea class="form-control span7" name="note" id="note" rows="8" required="true">

                        </textarea>
                        <br /> <br />
                          <button type="submit" class="btn btn-success">Submit</button>
                    </form>
                  </div>

 <div id="ChangPassword" class="tab-pane fade in
      
<c:if test='${not empty param["Success"]}'>
 active
</c:if>
 <c:if test='${not empty param["Failed"]}'>
 active
</c:if>



 ">
<form  action ='<%= response.encodeURL("facultypasschange") %>' id="contact-form4" class="form-horizontal" method="post">

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
        </div>

    </div>




 <%@include file="footer.jsp" %>
</body>
</html>