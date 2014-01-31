<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="On-line Exam System is very useful for Educational Institute to prepare an exam, save the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students."/>
<meta name="keywords" content="result,profile,quiz,online,exam,contest,codeshare,student,paper,faculty,give,make,delete" />
<meta name="author" content="Abdul Qadir Faridi & Pankaj Chaudhary" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Result ExamShow</title>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="assets/js/jquery.js"></script>
		<script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.validate.min.js"></script>
                
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
    	<script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
<script type="text/javascript" src="assets/js/bootstrap-tab.js"></script>
              	<script type="text/javascript" src="script1.js"></script>
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
             String user = (String)session.getAttribute("studentid");
             String uname = (String)session.getAttribute("username");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {
                    out.println("<b> Welcome , <a href='studentprofile.jsp' style='color:white'>" +uname+ "</a></b>");
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
                    <a href="home.jsp" data-toggle="tab">Home</a>
                    </li>
                    <li>
                    <a href="./studentprofile.jsp" >Profile</a>
                    </li>
                     <li>
                    <a href="#viewsub" data-toggle="tab">View Subjects</a>
                    </li>
                  
                    <li>
                    <a href="#notice" data-toggle="tab">Notification</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span5 pull-right">
            <div id="myTabContent" class="tab-content">
                <div id="paper" class="tab-pane fade in active">
                <form action="studentprofile.jsp" method="post">
<%

        String scode = request.getParameter("scode");

        Connection con=null;
        Statement st1=null;
        ResultSet rs1=null;
        Statement stt1=null;
        ResultSet rss1=null;
        Config c = new Config();
        con = c.getcon();
        int cnt=0,rows;
        String sname="";
        try {
            st1=con.createStatement();
            stt1=con.createStatement();
            String qry = "select * from subjects where subjectcode='"+scode+"'";
            rs1 = st1.executeQuery(qry);
           // out.println("kya");
            if(rs1.next())
            {
                //out.println("hello");
                sname = rs1.getString("subjectname");
                //subject code exists
                java.util.Date date= new java.util.Date();
                Timestamp ts = new Timestamp(date.getTime());


               qry = "select * from exams where scode='"+scode+"'";
               rs1 = st1.executeQuery(qry);
               if(rs1.next())
               {
                   Timestamp sdate = rs1.getTimestamp("startdate");
                   Timestamp edate =  rs1.getTimestamp("enddate");
                   if(ts.compareTo(edate)>0)
                   {
                        //contest ended
                        qry = "select * from result"+scode+" where username='"+user+"'";
                        rss1 = stt1.executeQuery(qry);
                        if(rss1.next())
                        {
                            //code to process Result






                     out.println("<h1 style='color:#3399FF;'> "+"Result: "+sname+" </h1>");

                    Statement st=null;
                    ResultSet rs=null;
                    Statement stt=null;
                    ResultSet rss=null;
                    int score=0;
                    int correct=0,wrong=0,skipped=0;

                            st=con.createStatement();
                            stt=con.createStatement();
                            String str = "select count(*) as rows from " + scode;
                            rs=st.executeQuery(str);
                            int maxx=0;
                            if(rs.next())
                            {
                                    maxx = Integer.parseInt(rs.getString("rows"));
                            }
                            int num = 1;
                            String[] q = new String[maxx+1];
                            int i = 1;
                            String query="select * from " +scode;
                            rs=st.executeQuery(query);
                            out.println("<table class='table table-striped' >");
                            String ans="",qno="",qans="";
                            while(rs.next())
                            {
                                ans = rs.getString("ans");
                                qno = rs.getString("qno");
                                query = "select q"+qno+" as qans from result"+scode+" where username='"+user+"'";
                                rss = stt.executeQuery(query);
                                if(rss.next())
                                    qans = rss.getString("qans");

                                q[i] = qans;
                                //out.println(qans);
                                if(qans.equals("null"))  skipped++;
                                else{
                                if(ans.equals(q[i]))
                                {
                                    correct++;
                       %>

                          <tr style="font-weight:bold;">
                              <td>Qno:<%=rs.getString("qno")%></td>
                              <td><img src="assets/img/correct.png" alt="correct" /></td>
                          </tr>

                         <%
                                }
				else
								{
								%>
								<tr style="font-weight:bold;">
									<td>Qno:<%=rs.getString("qno")%></td>
									<td><img src="assets/img/wrong.png" alt="wrong" /></td>
								</tr>
								<%
								}}
                                                    i++;

						}
                            wrong = maxx - correct - skipped;
                            out.println("</table>");
                            score  = correct*4 - wrong;

                            qry = "update result"+scode+" set score='"+score+"' where username='"+user+"'";

                            st.executeUpdate(qry);

%>
                    <br /><br /><br />
                    <h1 style='color:#3399FF;'> Statistics : </h1>
                    <table class="table table-condensed">
                       
                        <tr style="background-color: #dff0d8;">
                            <td>Correct Questions</td>
                            <td><%=correct%></td>
                        </tr>
                        <tr style="background-color: #f2dede">
                            <td>Wrong Questions</td>
                            <td><%=wrong%></td>
                        </tr>
                         <tr style="background-color: #eeeeee"">
                            <td>Skipped Questions</td>
                            <td><%=skipped%></td>
                        </tr>
                        <tr style="background-color:#CCCCFF;font-weight:bold;font-size:20px;">
                            <td>Total Score</td>
                            <td><%=score%></td>
                        </tr>
                    </table>




<%
   }
                        else
                        {
                            //not given exam
                            response.sendRedirect("studentprofile.jsp?NotGiven=True");
                        }


                   }
                   else
                   {
                        response.sendRedirect("studentprofile.jsp?Unavailable=True");
                   }

                }

            }
            else
            {
               // out.println("haa");
                response.sendRedirect("studentprofile.jsp?ErrorCode=True");
            }
}
        catch(Exception e){}




%>


               
                    <br/>
                    <button type="submit" class="btn btn-success">Go to Profile</button>
                </form>
            
                </div>


                <div id="viewsub" class="tab-pane fade in">

                  <%
                          ResultSet rs = null;
                          Statement st = null;
                                try
                                {
                                    st=con.createStatement();
                                    String query="select * from subjects";
                                    rs=st.executeQuery(query);
                                    out.println("<table class='table table-striped'");
                                    while(rs.next())
                                    {
                                        out.println("<tr>");
                                        out.println("<td>"+rs.getString("subjectname")+"</td>");
                                        out.println("<td>"+rs.getString("subjectcode")+"</td>");
                                        out.println("</tr>");
                                    }
                                    out.println("</table>");
                                }
                                catch(Exception e){}
                  %>

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






            </div>





            </div>
        </div>

    </div>


<br/><br/>

 <%@include file="footer.jsp" %>
</body>
</html>