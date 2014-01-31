<%-- 
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

            String uname = (String)session.getAttribute("username");
             String fname = (String)session.getAttribute("facultyname");
             if(uname!=null || fname!=null)
                {
                    response.sendRedirect("home.jsp");
                }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="onlinequiz,webdunia,wiqiz,mcqquestions,sanfoundary,indiabix,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete,result,profile,update,view,onlineexam" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exam Show</title>

		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
	        <script type="text/javascript" src="assets/js/jquery.validate.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min1.js"></script>
                

</head>


<body
    <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-carousel.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-dropdown.js"></script>
                <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
           <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script2.js"></script>
  <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script> 
                <%@include file="header.jsp" %>


<div class="container well">
<div class="row">
    <div class="span7" >

<div class="bs-docs-example">
        <div id="myCarousel" class="carousel slide" style="height:350px; width:600px;">
        <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
        <div class="active item" style="height:350px; width:600px;">
        <img src="assets/img/exam3.jpg" height="350" width="600" alt="ExamShow" />
        </div>
        <div class="item">

        <img src="assets/img/exam3.jpg" height="350" width="600" alt="ExamShow"/>
        </div>
        <div class="item">

        <img src="assets/img/exam3.jpg" height="350" width="600" alt="ExamShow"/>
        </div>
        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
      </div>

    </div>

     <div id="maincontent" class="span5 pull-right ">
         <ul class="nav nav-tabs nav-justified">
          <li class="active"><a href="#student" data-toggle="tab">Student Register</a></li>
          <li><a href="#faculty" data-toggle="tab">Faculty Register</a></li>

          <li class="dropdown">
          <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
            <li><a href="#dropdown1" tabindex="-1" data-toggle="tab">As Student</a></li>
            <li><a href="#dropdown2" tabindex="-1" data-toggle="tab">As Faculty</a></li>
          </ul>
        </li>
        </ul>
 <div id="myTabContent" class="tab-content">
<div id="student" class="tab-pane

<c:if test='${!((not empty param["existsFaculty"])  || (not empty param["FacultyVerify"]) ||  (not empty param["RetryFaculty"]) || (not empty param["RegisterFaculty"]) || (not empty param["existsStudent"]) || (not empty param["RetryStudent"]) || (not empty param["RegisterStudent"]))}'>
active
</c:if>

<c:if test='${((not empty param["existsStudent"]) || (not empty param["RegisterStudent"]))}'>
active
</c:if>


                ">
       <c:if test='${not empty param["RegisterStudent"]}'>
 <p style="color:green;font-weight:bold;">Student Registered Successfully.</p>
</c:if>
			<form action="studentregistration" id="contact-form" class="form-horizontal" method="post">

                                                    <div class="control-group">
						      <label class="control-label" for="sname">Student Name</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="sname" id="sname" placeholder="Student Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                 
						  <div class="control-group">
						      <label class="control-label" for="username">Student ID</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="username" id="username" placeholder="User Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
   <c:if test='${not empty param["existsStudent"]}'>
 <p style="color:red;font-weight:bold;">username Already exists.</p>
</c:if>


                                                      </div>


						    </div>


                                                                                <div class="control-group">
                                                                              <label class="control-label" for="passwd">Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="passwd" id="passwd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                     <div class="control-group">
                                                                              <label class="control-label" for="conpasswd">Confirm Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpasswd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                     </div>
                             <div class="control-group">
						      <label class="control-label" for="institute">Institute</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-home"></i></span>
                                                        <input required type="text" class="input-large" name="institute" id="institute" placeholder="Institute Name"  onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="email">Email Address</label>
                                                      <div class="controls">
                                                          <div class="input-prepend">
                                <span class="add-on"><i class="icon-envelope"></i></span>
                                                        <input type="text" class="input-large" name="email" id="email" placeholder="Email address"/>
                                                      </div>
                                                    </div>
                                                    </div>
						    <div class="control-group">
						      <label class="control-label" for="number">Mobile No.</label>
						      <div class="controls">
                                                <div class="input-prepend">
                                                    	<span class="add-on"><i class="icon-book"></i></span>
						        <input type="text" class="input-large" name="number" id="number" maxlength="10" placeholder="Mobile number"/>
					                        </div>
						    </div>
                                                    </div>


                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-success">Create My Account</button>   			      <button type="reset" class="btn">Cancel</button>
                                                                        </div>
                                                                                </div>
						</form>
                                                                        <br/>
                                    </div>

                                              <div id="faculty" class="tab-pane
  <c:if test='${(not empty param["existsFaculty"]) || (not empty param["RegisterFaculty"])}'>
active
</c:if>



                                                   ">

       <c:if test='${not empty param["RegisterFaculty"]}'>
 <p style="color:green;font-weight:bold;">Faculty Registered Successfully.</p>
</c:if>
						<form action="facultyregistration" id="contact-form1" class="form-horizontal" method="post">

                                                      <div class="control-group">
						      <label class="control-label" for="fname">Faculty Name</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="fname" id="fname" placeholder="Faculty Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>

						    <div class="control-group">
						      <label class="control-label" for="name">Faculty ID</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="username" id="username" placeholder="User Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
<c:if test='${not empty param["existsFaculty"]}'>
 <p style="color:red;font-weight:bold;">username Already exists.</p>
</c:if>
                                                      </div>





						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="pass">Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="pass" id="pass" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                     <div class="control-group">
                                                                              <label class="control-label" for="conpassword">Confirm Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="conpasswd" id="conpasswd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                     </div>
                                            <div class="control-group">
						      <label class="control-label" for="institute">Institute</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-home"></i></span>
                                                        <input required type="text" class="input-large" name="institute" id="institute" placeholder="Institute Name"  onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="email">Email Address</label>
                                                      <div class="controls">
                                                          <div class="input-prepend">
                                <span class="add-on"><i class="icon-envelope"></i></span>
                                                        <input type="text" class="input-large" name="email" id="email" placeholder="Email address"/>
                                                      </div>
                                                    </div>
                                                    </div>
						    <div class="control-group">
						      <label class="control-label" for="number">Mobile No.</label>
						      <div class="controls">
                                                <div class="input-prepend">
                                                    	<span class="add-on"><i class="icon-book"></i></span>
						        <input type="text" class="input-large" name="number" id="number" maxlength="10" placeholder="Mobile number"/>
					                        </div>
						    </div>
                                                    </div>
                                                    <div class="control-group">
						      <label class="control-label" for="dob">Date of Birth</label>
						      <div class="controls">
                                                <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-calendar"></i></span>
						        <select style="width:67px" name="day">
                                                                        <option>Days</option>
                                                                        <%
                                                                        for(int i=1;i<=31;i++)
                                                                        {
                                                                                out.println("<option>"+i+"</option>");

                                                                        }
                                                                        %>
                                                                        </select>
                                                                        <select style="width:75px" name="month">
                                                                        <option>Months</option>
                                                                        <%
                                                                        for(int i=1;i<=12;i++)
                                                                        {
                                                                                out.println("<option>"+i+"</option>");
                                                                        }
                                                                        %>
                                                                        </select>
                                                                        <select style="width:75px" name="year">
                                                                        <option>Years</option>
                                                                        <%
                                                                        for(int i=1960;i<2013;i++)
                                                                        {
                                                                        out.println("<option>"+i+"</option>");
                                                                        }


                                                                        %>
                                                                        </select>

                                                          </div>
						    </div>
                                                    </div>
						    <div class="control-group">
						      <label class="control-label" for="gender" >Gender</label>
						      <div class="controls">


    <input type="radio" name="sex" id="sex" value="male" />
   Male


    <input type="radio" name="sex" id="sex" value="female" />
    Female
                                      </div>

                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
                                                      <button type="submit" class="btn btn-success">Create My Account</button>   			      <button type="reset" class="btn">Cancel</button>
                                                                        </div>
                                                                                </div>
						</form>
                                    </div>

<div  id="dropdown1" class="tab-pane
<c:if test='${not empty param["RetryStudent"]}'>
active
</c:if>
      ">


<form action='<%= response.encodeURL("studentlogin") %>' id="contact-form5" class="form-horizontal" method="post">

						    <div class="control-group">
						      <label class="control-label" for="username">Student ID</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="username" id="username" placeholder="User Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="passwd" id="passwd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">
 <c:if test='${not empty param["RetryStudent"]}'>
 <p style="color:red;font-weight:bold;">Wrong Username or Password.</p>

</c:if>
                                                      <button type="submit" class="btn btn-success" data-loading-text="Loading...">Login</button>
                                                                        </div>
                                                                                </div>
</form>





          </div>
<div id="dropdown2" class="tab-pane 

<c:if test='${(not empty param["RetryFaculty"]) || (not empty param["FacultyVerify"]) }'>
active
</c:if>

">
<form action='<%= response.encodeURL("facultylogin") %>' id="contact-form6" class="form-horizontal" method="post">
						    <div class="control-group">
						      <label class="control-label" for="username">Faculty ID</label>
						      <div class="controls">
                                                          <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-user"></i></span>
                                                        <input type="text" class="input-large" name="username" id="username" placeholder="User Name" onkeyup="loadXMLDoc()"/>
                                                              <span id="err"> </span>
                                                          </div>
                                                      </div>
						    </div>
                                                    <div class="control-group">
                                                                              <label class="control-label" for="password">Password</label>
                                                                              <div class="controls">
                                                                                  <div class="input-prepend">
                                                        <span class="add-on"><i class="icon-lock"></i></span>
                                                                                <input type="password" class="input-large" name="passwd" id="passwd" placeholder="******"/>
                                                                              </div>
                                                                            </div>
                                                    </div>
                                                      <div class="control-group">
                                                      <label class="control-label"></label>
                                                      <div class="controls">

<c:if test='${not empty param["RetryFaculty"]}'>
 <p style="color:red;font-weight:bold;">Wrong Username or Password.</p>

</c:if>

 <c:if test='${not empty param["FacultyVerify"]}'>
 <p style="color:red;font-weight:bold;">You are not Verified Yet.</p>

</c:if>
                                                      <button type="submit" class="btn btn-success" data-loading-text="Loading...">Login</button>
                                                                        </div>
                                                                                </div>
</form>




        </div>
     </div>
     </div>
  
</div>
</div><br/><br/><br/><br/>
 <%@include file="footer.jsp" %>
</body>
</html>