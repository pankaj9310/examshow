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
<meta name="keywords" content="update,view,result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update Paper ExamShow</title>
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

                 <script type="text/javascript" src="tinymce/tinymce.min.js"></script>



<script type="text/javascript">
tinymce.init({
        mode : "specific_textareas",
        editor_selector : "mceEditor",
        plugins: [
                "advlist autolink autosave link image lists charmap print preview hr anchor pagebreak spellchecker",
                "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                "table contextmenu directionality emoticons template textcolor paste fullpage textcolor"
        ],

        toolbar1: "newdocument | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | styleselect formatselect fontselect fontsizeselect",
        toolbar2: "cut copy paste | bullist numlist | outdent indent | undo redo | link unlink image | forecolor backcolor | table | hr | subscript superscript | charmap emoticons |fullscreen |",

        menubar: false,
        toolbar_items_size: 'small',

        style_formats: [
                {title: 'Bold text', inline: 'b'},
                {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
                {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
                {title: 'Example 1', inline: 'span', classes: 'example1'},
                {title: 'Example 2', inline: 'span', classes: 'example2'},
                {title: 'Table styles'},
                {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
        ],

        templates: [
                {title: 'Test template 1', tarea: 'Test 1'},
                {title: 'Test template 2', tarea: 'Test 2'}
        ]
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

   <div id="maincontent" class="span12 pull-right">
            <div id="myTabContent" class="tab-content">


           <%
                    PrintWriter writer=response.getWriter();
                    String scode = request.getParameter("sbcode");
                    session.setAttribute("sbcode",scode);
                    String author = (String)session.getAttribute("facultyid");

                    Connection con=null;
                    Statement st=null;
                    ResultSet rs=null;
                    Config c = new Config();
                    con = c.getcon();
                    st=con.createStatement();
                    int qno= Integer.parseInt(request.getParameter("qno"));
                    int cnt=0;

                    try
                    {

                         String   qry = "select count(*) as col from subjects where subjectcode='"+scode+"' and author='"+author+"'";
                            rs = st.executeQuery(qry);
                            if(rs.next())
                                cnt = Integer.parseInt(rs.getString("col"));

                            if(cnt==0)
                                response.sendRedirect("facultyprofile.jsp?ErrorUpdate=True");
                            else
                                {


                                    qry = "select * from "+scode+" where qno = "+qno;
                                    rs = st.executeQuery(qry);
                                    if(rs.next())
                                    {
           %>

 <c:if test='${not empty param["Success"]}'>
 <p style="color:green;font-weight:bold;">Question Added successfully.</p>

</c:if>
                    <form action="updatepaper" id="contact-form" class="form-horizontal" method="post">
                        <table class="table" style='background-color:white;'>

                            <tr>
                                <td>
                                    Question Number:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="qno" id="qno" value="<%out.print(qno);%>" required="true"/>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    Question:
                                </td>
                                <td>
                                    <textarea class="mceEditor"  name="ques" rows="15" cols="50" value="<%=rs.getString("qname")%>" ><%=rs.getString("qname")%></textarea>
                             
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    Option 1:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="op1" id="op1" value="<%=rs.getString("opt1")%>" required="true"/>
                                </td>
                            </tr>
                               <tr>
                                <td>
                                    Option 2:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="op2" id="op2" value="<%=rs.getString("opt2")%>" required="true"/>
                                </td>
                            </tr>
                               <tr>
                                <td>
                                    Option 3:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="op3" id="op3" value="<%=rs.getString("opt3")%>" required="true"/>
                                </td>
                            </tr>
                          <tr>
                                <td>
                                    Option 4:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="op4" id="op4" value="<%=rs.getString("opt4")%>" required="true"/>
                                </td>
                            </tr>
                          <tr>
                                <td>
                                    Answer:
                                </td>
                                <td>
                                    <input type="text" class="span5" name="ans" id="ans" value="<%=rs.getString("ans")%>" required="true"/>
                                </td>
                            </tr>


                        </table>
                         <center> <button type="submit" class="btn btn-success">Submit</button></center>
                    </form>

          <%
          }//if
                 }//else
                    }
                    catch(Exception e){}

con.close();
%>

        </div>

    </div>

  </div>

    </div>

<br/><br/><br/>
 <%@include file="footer.jsp" %>
</body>
</html>