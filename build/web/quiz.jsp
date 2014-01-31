<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>
<%

            String user = (String)session.getAttribute("studentid");
           // String uname = (String)session.getAttribute("username");
            String ffname = (String)session.getAttribute("facultyname");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Upcoming Events ExamShow</title>
 <link href="assets/css/bootstrap_1.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
</head>
<body>
  <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script>
    	<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
                <script type="text/javascript" src="assets/js/jquery.validate.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min1.js"></script>
                <script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
                <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>

                       <script src="assets/js/jquery-1.js" type="text/javascript"></script>
                <script src="assets/js/jquery_1.js" type="text/javascript"></script>
                    <script src="assets/js/application_1.js" type="text/javascript"></script>

                <script src="assets/js/bootstrap.js" type="text/javascript"></script>
                <script type="text/javascript" src="script2.js"></script>
                 <script type="text/javascript" src="countdown.js"></script>
        <%
                    if(user != null ||ffname!=null)
               {%>

        <%@include file="header1.jsp" %>
        <%  }
                else
                {%>
                 <%@ include file="header.jsp" %>
                 <% }
   %>


<div class="container">
<div class="row">

<%
        String scode = request.getParameter("scode");
        Connection con=null;
        Statement st=null;
        Statement stt=null;
        ResultSet rs=null;
        ResultSet rss=null;
        Config c = new Config();
        con = c.getcon();
        st=con.createStatement();
        stt=con.createStatement();
        int i=0,cnt=0;
       
        try
        {
            String   qry = "select * from exams where scode='"+scode+"'";
            rs = st.executeQuery(qry);
            if(rs.next())
            {
                i++;
                cnt=0;
                out.println(rs.getString("instructions"));
                  Timestamp sdate = rs.getTimestamp("startdate");
                Timestamp edate =  rs.getTimestamp("enddate");
%>

    <table id="sortTableExample" class='table zebra-striped'>
           <thead>
            <tr>
                <th class="red header">Quiz Code</th>
                <th class="blue header">Start Date</th>
                <th class="green header headerSortUp">End Date</th>
                <th class="yellow header">Contest</th>
            </tr>
            </thead>
           <tbody>

               <tr>
                   <td style="font-weight:bold;">
                       <%=scode%>
                   </td>
                   <td style="font-weight:bold;">
                       <%=sdate%>
                   </td>
                   <td style="font-weight:bold;">
                       <%=edate%>
                   </td>

<%
              


                java.util.Date date= new java.util.Date();
                Timestamp ts = new Timestamp(date.getTime());
if(ts.compareTo(sdate)<0)
    {
                long remaining = (sdate.getTime()-ts.getTime())/1000;
%>

<td>
    <p style="font-weight:bold;color:red;">quiz will start after</p>
                      <script type="application/javascript">
                                                                var myCountdown2 = new Countdown({
									time: <%=remaining%>,
									width:200,
									height:40,
									rangeHi:"day"	// <- no comma on last item!
									});

                      </script>
</td>



<%
}//if
 else if(ts.compareTo(sdate)>0 && ts.compareTo(edate)<0)
{

 out.println("<td><a class='btn btn-danger' href='studentprofile.jsp?ExamActive=True'>Start Quiz</a></td>");

 }
else if(ts.compareTo(edate)>0)
{
out.println("<td><p style='font-weight:bold;color:red'>Contest Ended</p></td>");

}
          out.println("</tr></tbody></table>");

        }//if
            }//try
        catch(Exception e){}

        con.close();
 %>



</div>
</div>
 <%@include file="footer.jsp" %>
</body>
</html>