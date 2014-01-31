<%--
    Document   : index
    Created on : Oct 21, 2013, 6:16:47 PM
    Author     : ICT
--%>
<%@page import="java.util.*"%>
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
<title>Online Quiz</title>
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
                <script type="text/javascript" src="countdown.js"></script>
  <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
</script> 
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
             String user = (String)session.getAttribute("studentid");
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
                        <a href="#paper" data-toggle="tab">Exam</a>
                    </li>
                    <li>
                    <a href="#notice" data-toggle="tab">Notification</a>
                    </li>
            </ul>
        </div>
   <div id="maincontent" class="span7 pull-right">
            <div id="myTabContent" class="tab-content">




              <div id="notice" class="tab-pane">

                  <%
                 
                    Connection con=null;
                    Statement st3=null;
                    ResultSet rs3=null;
                                try
                                {

                                    Config c = new Config();
                                    con = c.getcon();
                                    String query ="select * from notice";
                                    st3 = con.createStatement();
                                    rs3=st3.executeQuery(query);
                                    
                                    if(rs3.next())
                                    {
                                        out.println("<textarea class='form-control span7' rows='8' readonly style='resize:none;'>"+rs3.getString("note")+"</textarea>");
                                    }
                                }
                                catch(Exception e){}

                
                  %>

                </div>

















                <div id="paper" class="tab-pane active">
                              
                    <%
                     PrintWriter writer=response.getWriter();
                     String scode=(String)session.getAttribute("sbcode");
                     String qn = request.getParameter("q_id");
                     if(qn==null)
                        qn = (String)session.getAttribute("q_id");
                     
       
                     String sname="",ans="";

                    Statement st=null;
                    ResultSet rs=null;
                    Statement st1 = null,st2=null;
                    ResultSet rs1 = null;
                    try
                        {
 // out.println("bc");
                            
                            st = con.createStatement();
                            st1 = con.createStatement();
                            st2 = con.createStatement();
                            session.setAttribute("subcode",scode);
                            //session.setAttribute("subname",sname);
                             String qry = "SELECT COUNT(*) as col FROM information_schema.tables WHERE table_schema = 'examshow' AND table_name = '"+scode+"'";

                            rs = st.executeQuery(qry);
                            int check=1;
                            if(rs.next())
                            {
                                //out.println("hello");
                                check = Integer.parseInt(rs.getString("col"));
                            }

                            if(check==1)
                            {
                           
   //    out.println("mc");

                                String appcode = "result";
                                appcode += scode;

                                String qryy = "select flag as aq  from "+appcode+" where username = '"+user+"'";
                                Statement stt = con.createStatement();
                                ResultSet rss = stt.executeQuery(qryy);
                               int checking=0,register=0,quesno=1;
                                if(rss.next())
                                    {
                                   
                                        checking = Integer.parseInt(rss.getString("aq"));
                                    }
                             
                                if(checking == 0)
                                  {
//out.println("in");
                                               qry = "select count(*) as col from result"+scode+" where username='"+user+"'";
                                               rs = st.executeQuery(qry);
                                               if(rs.next())
                                                   register = Integer.parseInt(rs.getString("col"));

                                               if(register==1)
                                               {
                                                   java.util.Date date= new java.util.Date();
                                                   Timestamp ts = new Timestamp(date.getTime());
                                              //     out.println(ts);
                                                   
                                                   qry = "select * from exams where scode='"+scode+"'";
                                                   rs = st.executeQuery(qry);
                                                   if(rs.next())
                                                   {
                                                       Timestamp sdate = rs.getTimestamp("startdate");
                                                       Timestamp edate =  rs.getTimestamp("enddate");

                                                       if(ts.compareTo(sdate)>0 && ts.compareTo(edate)<0)
                                                       {
//out.println("hello");
                                                                qry = "select subjectname from subjects where subjectcode='"+scode+"'";
                                                                rs = st.executeQuery(qry);
                                                                if(rs.next())
                                                                    sname = rs.getString("subjectname");
                                                                session.setAttribute("subname",sname);

                                                                out.println("<center><h1 style='color:#808080;'> "+sname+" </h1></center><br/></br/>");

                                                                String query="select * from " +scode+" where qno='"+qn+"'";
                                                             //   out.println(query)  ;
                                                                rs=st.executeQuery(query);
                                                                out.println("");
                                                                if(rs.next())
                                                                {
                  //        out.println("hi");
                                                                    quesno = Integer.parseInt(rs.getString("qno"));
                                                                    qry = "select q"+quesno+" from result"+scode+" where username='"+user+"'";
                                                                    rs1 = st1.executeQuery(qry);
                                                                    if(rs1.next())
                                                                    {
                      //     out.println("hhh");
                                                                        ans = rs1.getString("q"+quesno);
                                                                     //   out.println(ans);
                                                                        if(ans==null)
                                                                            ans="";

                                           %>


                                              Qno:&nbsp;<%=rs.getString("qno")%>
                                               &nbsp;&nbsp;&nbsp;&nbsp;   <%=rs.getString("qname") %>
      <form action="result" method="post">
          
              <table class='table table-hover' style='background-color:white;' >
                  <tr>
                      <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt1")%>' <% if(ans.equals(rs.getString("opt1")))out.print("checked");%> /></td>
                      <td><%=rs.getString("opt1")%></td>
                  </tr>
                  <tr>
                      <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt2")%>' <% if(ans.equals(rs.getString("opt2")))out.print("checked");%>/></td>
                      <td><%=rs.getString("opt2")%></td>
                  </tr>
                  <tr>
                      <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt3")%>' <% if(ans.equals(rs.getString("opt3")))out.print("checked");%>/></td>
                      <td><%=rs.getString("opt3")%></td>
                  </tr>
                  <tr>
                      <td><input type="radio" name="q<%=rs.getString("qno")%>" value='<%=rs.getString("opt4")%>' <% if(ans.equals(rs.getString("opt4")))out.print("checked");%>/></td>
                      <td><%=rs.getString("opt4")%></td>
                  </tr>
              </table>
        
             <input type="hidden" name="q_id" value="<%=quesno + 1%>" />
             <button type='submit' class='btn btn-danger pull-right'>submit</button>
       </form>
             
        <form action="showpaper.jsp" method="post">
             <input type="hidden" name="q_id" value="<%=quesno - 1%>" />
             <button type='submit' class='btn btn-success'>previous</button>
        </form>

 


                                             <%
                                             }
                                                    }
                                                     else{

                                                      String qr = "update result"+scode+" set flag=1";
                                                      st2.executeUpdate(qr);
                                                      out.println("<center><p style='font-weight:bold;color:green;'> Results will be available after contest ends.</p></center>");



                                                     }
                           

                            out.println("<br/>");

                            //contest started
                            ts = new Timestamp(date.getTime());

                            long remaining = (edate.getTime() - ts.getTime())/1000;
                            %>
                  </div></div></div>
              <div class="span2 pull-right">
                      <script type="application/javascript">
                                                                var myCountdown2 = new Countdown({
									time: <%=remaining%>,
									width:200,
									height:80,
									rangeHi:"hour"	// <- no comma on last item!
									});

                      </script>

                  </div>
                            <%
                   
                            }
                             else if(ts.compareTo(sdate)<0)
                             {
                                out.println("<center><p style='font-weight:bold;color:red;'> Contest has not been started.</p></center><br/><br/>");
                                long instart = (sdate.getTime() - ts.getTime())/1000;
%>
              <div class="span2 pull-right">
                      <script type="application/javascript">
                                                                var myCountdown2 = new Countdown({
									time: <%=instart%>,
									width:500,
									height:80,
									rangeHi:"year"	// <- no comma on last item!
									});

                      </script>

                  </div>



        <%

                                out.println("</div></div></div>");

                             }
                             else if(ts.compareTo(edate)>0)
                                 {

                               out.println("<center><p style='font-weight:bold;color:red;'> Contest has been ended.</p></center><br/><br/>");

                             }






                         }//if
}//if
 else
{
 //not registered
    out.println("<p style='font-weight:bold;color:red;'> You are not Registered for this contest.</p><a href='upcomingevents.jsp'>click here to Register</a>");


 }






}//if

                                else
                                {
                                    
                                    response.sendRedirect("studentprofile.jsp?alreadygiven=True");
                                }

                         }
                            else
                                {
                               // out.println("<br/><br/><p style='font-weight:bold;color:red'>Wrong Subject Code</p>");
                                response.sendRedirect("studentprofile.jsp?error=True");
                            }
                         

                     }
                    catch(Exception e)
                        {
                            System.out.println("Error="+e);
                        }


                    con.close();
                    %>







               









            </div>





            </div>





 <%@include file="footer.jsp" %>
</body>
</html>