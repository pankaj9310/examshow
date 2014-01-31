<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import ="connection.Config"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Profile ExamShow</title>

		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>

</head>


<body>
    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/modal.js"></script>
		<script type="text/javascript" src="script1.js"></script>
                     <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_1.js" type="text/javascript"></script>
                    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
  <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script>
    
<%
             String uname1 = (String)session.getAttribute("username");
             if(uname1==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {%>
                   
                   <%@include file="header1.jsp" %>
                   <%
                   }
   
%>


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
                    <a href="#viewsub" data-toggle="tab">View Subjects</a>
                    </li>
                    <li>
                    <a href="#viewresult" data-toggle="tab">View Results</a>
                    </li>
                    <li>
                    <a href="#exam" data-toggle="tab">Exam</a>
                    </li>
                    <li>
                    <a href="#notice" data-toggle="tab">Notification</a>
                    </li>
                     <li>
                    <a href="#ChangPassword" data-toggle="tab">Change Password</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span5 pull-right" >
            <div id="myTabContent" class="tab-content">
 <div id="home" class="tab-pane
<c:if test='${!(not empty param["error"]) && !(not empty param["Failed"]) && !(not empty param["alreadygiven"]) && !(not empty param["ExamActive"]) && !(not empty param["NotGiven"]) && !(not empty param["Unavailable"]) && !(not empty param["ErrorCode"])}'>
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
              
 <div id="profile" class="tab-pane">

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
            
            String userid = session.getAttribute("studentid").toString();
            String q = "select * from student where studentID= '"+userid+"'";
            st =con.createStatement();
            rs=st.executeQuery(q);
            if(rs.next())
            {
                name = rs.getString("studentname");
                sem = rs.getString("semester");
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
                              <td>Semester : </td>
                              <td><%=sem%></td>
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
			%>
            </div>

                <div id="viewsub" class="tab-pane">

                  <%
                  int i=0;
                             
                                try
                                {
                                    String query="select * from subjects";
                                    rs=st.executeQuery(query);
                                                                     %>
                                        <table id="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
                <th class="header">S No.</th>
                <th class="red header">Subject Name</th>
                <th class="blue header">Subject Code</th>
            </tr>
            </thead>
            <tbody>
                                    <%
                                    while(rs.next())
                                    { ++i;
                                        out.println("<tr>");
                                        out.println("<td>" +i+"</td>");
                                        out.println("<td>"+rs.getString("subjectname")+"</td>");
                                        out.println("<td>"+rs.getString("subjectcode")+"</td>");
                                        out.println("</tr>");
                                    }
                                    out.println("</tbody></table>");
                                }
                                catch(Exception e){}
                  %>
                   <br/>
                </div>
                   <br/>


          
                               <div id="viewresult" class="tab-pane
<c:if test='${(not empty param["Unavailable"]) || (not empty param["ErrorCode"]) || (not empty param["NotGiven"])}'>
active
</c:if>


                                    ">
<form action="result.jsp" id="contact-form" class="form-horizontal" method="post">

                                         <div class="control-group">
                                                                              <label class="control-label" for="password">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>

<c:if test='${not empty param["Unavailable"]}'>
<p style='font-weight:bold;color:green'>Result will be available after contest ends.</p>
</c:if>

<c:if test='${not empty param["NotGiven"]}'>
<p style='font-weight:bold;color:red'>You have not given this Exam.</p>
</c:if>

<c:if test='${not empty param["ErrorCode"]}'>
<p style='font-weight:bold;color:red'>Wrong Subject Code</p>
</c:if>

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

                <div id="exam" class="tab-pane

<c:if test='${(not empty param["error"]) || (not empty param["alreadygiven"]) || (not empty param["ExamActive"]) }'>
active
</c:if>




                     " >
                 
<form action="showpaper_servlet" id="contact-form" class="form-horizontal" method="post">

				
                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Subject Code</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-barcode"></i></span>
                                                                                <input type="text" class="input-large" name="scode" id="scode" required="true" placeholder="Subject Code"/>
                                                                              </div>
<c:if test='${not empty param["alreadygiven"]}'>
<p style='font-weight:bold;color:red'>You have already Given this Paper..</p>
</c:if>

                                                                                <c:if test='${not empty param["error"]}'>
<p style='font-weight:bold;color:red'>Wrong Subject Code</p>
</c:if>

                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-primary">start Exam</button>
                                                                        </div>
                                                                                </div>
</form>
                </div>
              <div id="notice" class="tab-pane fade in">

                  <%

                                try
                                {

                                    String query ="select * from notice";
                                    rs=st.executeQuery(query);
                                    if(rs.next())
                                    {
                                        out.println("<textarea class='form-control span7' rows='8' readonly style='resize:none;'>"+rs.getString("note")+"</textarea>");
                                    }
                                }
                                catch(Exception e){}
                                con.close();
                  %>

                </div>





 <div id="ChangPassword" class="tab-pane fade in
<c:if test='${not empty param["Success"]}'>
 active
</c:if>
 <c:if test='${not empty param["Failed"]}'>
 active
</c:if>
 ">
<form  action ='<%= response.encodeURL("studentpasschange") %>' id="contact-form4" class="form-horizontal" method="post">

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
<br/><br/>
    </div>
<br/><br/><br/><br/>

 <%@include file="footer.jsp" %>
</body>
</html>