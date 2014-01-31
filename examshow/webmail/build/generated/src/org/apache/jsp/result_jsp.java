package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.PrintWriter;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/footer.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title></title>\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.ico\"/>\r\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery-1.7.1.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/bootstrap-button.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.validate.min.js\"></script>\r\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-tab.js\"></script>\r\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-carousel.js\"></script>\r\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-dropdown.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"script1.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("         .navbar-inner{\r\n");
      out.write("\t\t\t background:#000;\r\n");
      out.write("\t\t\t border-bottom:5px solid #007AF4;\r\n");
      out.write("\t\t\t height:70px;\r\n");
      out.write("\r\n");
      out.write("\t\t\t }\r\n");
      out.write("\t\t\t.navbar-inner .brand{color:#FFF}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"navbar\">\r\n");
      out.write("<div class=\"navbar-inner\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("<a href=\"#\" class=\"brand\"> <img src=\"./assets/img/examshow.png\" alt=\"Exam Show\" width=\"100px\" height=\"70px\"/></a>\r\n");
      out.write("<br/>\r\n");
      out.write("<h1 class=\"brand\" style=\"font-weight:bold;\">Exam Show</h1>\r\n");
      out.write("<form action=\"logout\" method=\"post\" class=\"pull-right\">\r\n");
      out.write("<button class=\"btn btn-primary\" > logout </button>\r\n");
      out.write("</form>\r\n");
      out.write("<p class=\"pull-right\" style=\"color:white;\">\r\n");
      out.write("<br />\r\n");

             String uname = (String)session.getAttribute("username");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {
                   out.println("<b> Welcome , "+uname+"</b>");
            }

      out.write("\r\n");
      out.write("&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("</p>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container well\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"span2\">\r\n");
      out.write("            <ul class=\"nav nav-tabs nav-stacked nav-justified\"  style='background-color:white;'>\r\n");
      out.write("                    <li class=\"active\">\r\n");
      out.write("                    <a href=\"home.jsp\" data-toggle=\"tab\">Home</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                    <a href=\"./studentprofile.jsp\" >Profile</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                     <li>\r\n");
      out.write("                    <a href=\"#viewsub\" data-toggle=\"tab\">View Subjects</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                    <a href=\"#exam\" data-toggle=\"tab\">Exam</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                    <a href=\"#notice\" data-toggle=\"tab\">Notification</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("   <div id=\"maincontent\" class=\"span5 pull-right\">\r\n");
      out.write("            <div id=\"myTabContent\" class=\"tab-content\">\r\n");
      out.write("                <div id=\"paper\" class=\"tab-pane fade in active\">\r\n");
      out.write("                <form action=\"studentprofile.jsp\" method=\"post\">\r\n");
      out.write("                    ");

                     PrintWriter writer=response.getWriter();
		     String scode = (String)session.getAttribute("subcode");
		     String sname = (String)session.getAttribute("subname");

                     out.println("<h1 style='color:#3399FF;'> "+"Result: "+sname+" </h1>");
                    Connection con=null;
                    Statement st=null;
                    ResultSet rs=null;
                    int correct=0,wrong=0,skipped=0;
                    try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examshow","root","root");
                            st=con.createStatement();
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
                            String ans="";
                            while(rs.next())
                            {
                                ans = rs.getString("ans");
                                q[i] = request.getParameter("q"+rs.getString("qno"));
                                if(q[i]==null)  skipped++;
                                else{
                                if(ans.equals(q[i]))
                                {
                                    correct++;
                       
      out.write("\r\n");
      out.write("\r\n");
      out.write("                          <tr style=\"font-weight:bold;\">\r\n");
      out.write("                              <td>Qno:");
      out.print(rs.getString("qno"));
      out.write("</td>\r\n");
      out.write("                              <td><img src=\"assets/img/correct.png\" alt=\"correct\" /></td>\r\n");
      out.write("                          </tr>                                             \r\n");
      out.write("                    \r\n");
      out.write("                         ");

                                }
				else
								{
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr style=\"font-weight:bold;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Qno:");
      out.print(rs.getString("qno"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><img src=\"assets/img/wrong.png\" alt=\"wrong\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>    \r\n");
      out.write("\t\t\t\t\t\t\t\t");

								}}
                                                    i++;
								
						}
                            wrong = maxx - correct - skipped;
                            out.println(" </table>");
                            int score  = correct*4 - wrong;

                            String username = (String)session.getAttribute("studentid");


                            String qry = "INSERT INTO result"+scode+" VALUES('"+username+"',"+score+")";
                            
                            st.executeUpdate(qry);
                            
                     }
                    catch(Exception e)
                        {
                            System.out.println("Error="+e);
                        }







                    
      out.write("\r\n");
      out.write("                    <br /><br /><br />\r\n");
      out.write("                    <h1 style='color:#3399FF;'> Statistics : </h1>\r\n");
      out.write("                    <table class=\"table table-condensed\">\r\n");
      out.write("                       \r\n");
      out.write("                        <tr style=\"background-color: #dff0d8;\">\r\n");
      out.write("                            <td>Correct Questions</td>\r\n");
      out.write("                            <td>");
      out.print(correct);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr style=\"background-color: #f2dede\">\r\n");
      out.write("                            <td>Wrong Questions</td>\r\n");
      out.write("                            <td>");
      out.print(wrong);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                         <tr style=\"background-color: #eeeeee\"\">\r\n");
      out.write("                            <td>Skipped Questions</td>\r\n");
      out.write("                            <td>");
      out.print(skipped);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                       \r\n");
      out.write("                    </table>\r\n");
      out.write("               \r\n");
      out.write("                    <br/>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success\">Go to Profile</button>\r\n");
      out.write("                </form>\r\n");
      out.write("            \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div id=\"viewsub\" class=\"tab-pane fade in\">\r\n");
      out.write("\r\n");
      out.write("                  ");

                          
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examshow","root","root");
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
                  
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"exam\" class=\"tab-pane fade in\">\r\n");
      out.write("\r\n");
      out.write("                    <form action=\"showpaper.jsp\" id=\"contact-form\" class=\"form-horizontal\" method=\"post\">\r\n");
      out.write("                        <table class=\"table table-striped\">\r\n");
      out.write("\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>Subject Name:</td>\r\n");
      out.write("                                <td><input name=\"sname\" type=\"text\"/></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>Subject Code:</td>\r\n");
      out.write("                                <td><input name=\"scode\" type=\"text\"/></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td colspan=\"2\">\r\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-success\">Submit</button>\r\n");
      out.write("\r\n");
      out.write("                                </td>\r\n");
      out.write("\r\n");
      out.write("                            </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("\r\n");
      out.write("                    </form>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("              <div id=\"notice\" class=\"tab-pane fade in\">\r\n");
      out.write("\r\n");
      out.write("                  ");


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
                  
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br/><br/>\r\n");
      out.write("\r\n");
      out.write(" ");
      out.write("<div class=\"footer\">       \n");
      out.write("<div class=\"navbar navbar-fixed-bottom\">\n");
      out.write("                      <div class=\"navbar-inner\" style=\"background:#000;\n");
      out.write("\t\t\t border-bottom:0px;\">\n");
      out.write("           <center style=\"color:white\"><a href=\"#myModal3\"  data-toggle=\"modal\" >Contact Us</a> || <a href=\"#myModal\" data-toggle=\"modal\">Feedback</a></center>\n");
      out.write("        <center style=\"color: white\">Copyright &copy; 2013 ExamShow, All rights reserved Disclaimer</center>\n");
      out.write("        <center>The website is at its BETA phase. Please help us to improve the website by giving your feedback.</center>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("       </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"myModal\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"height: 800px; width: 700px\">\n");
      out.write("<div class=\"modal-header\">\n");
      out.write("<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("<h3 id=\"myModalLabel\">Feedback form</h3>\n");
      out.write("</div>\n");
      out.write("<div class=\"modal-body\">\n");
      out.write(" <form action=\"feedback\" id=\"contact-form2\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("\n");
      out.write("                                                      <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"fname\">Name</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("\n");
      out.write("                                                        <input type=\"text\" class=\"input-large span5\" name=\"fname\" id=\"fname\" placeholder=\"Name\" onkeyup=\"loadXMLDoc()\"/>\n");
      out.write("                                                              <span id=\"err\"> </span>\n");
      out.write("\n");
      out.write("                                                      </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("                                                    <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\" for=\"email\">Email Address</label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                       <input type=\"text\" class=\"input-large span5\" name=\"email\" id=\"email\" placeholder=\"Email address\"/>\n");
      out.write("                                                       </div>\n");
      out.write("                                                    </div>\n");
      out.write("\t\t\t\t\t\t    <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"number\">Mobile No.</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                <input type=\"text\" class=\"input-large span5\" name=\"number\" id=\"number\" maxlength=\"10\" placeholder=\"Mobile number\"/>\n");
      out.write("\t\t\t\t\t           </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                     <div class=\"control-group\">\n");
      out.write("\t\t\t\t\t\t      <label class=\"control-label\" for=\"comment\">Comment</label>\n");
      out.write("\t\t\t\t\t\t      <div class=\"controls\">\n");
      out.write("                                                        <textarea class=\"form-control span5\" name=\"comment\" id=\"comment\" rows=\"8\" placeholder=\"Put youe Comment......\" required=\"true\">\n");
      out.write("                                                        </textarea>\n");
      out.write("                                                        <span id=\"err\"> </span>\n");
      out.write("                                                        </div>\n");
      out.write("\t\t\t\t\t\t    </div>\n");
      out.write("           <div class=\"control-group\">\n");
      out.write("                                                      <label class=\"control-label\"></label>\n");
      out.write("                                                      <div class=\"controls\">\n");
      out.write("                                                      <button type=\"submit\" class=\"btn btn-success btn-large\" data-loading-text=\"Loading...\">Send</button>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                                </div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"myModal3\" class=\"modal hide fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-header\">\n");
      out.write("    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">X</button>\n");
      out.write("    <h3 id=\"myModalLabel\">Contact Us</h3>\n");
      out.write("    </div>\n");
      out.write("    <div align=\"center\" class=\"modal-body lead\" style='color:#808080 ;font-weight: bold;' >\n");
      out.write("   \n");
      out.write("        <p>\n");
      out.write("            Abdul Qadir Faridi </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:aqfaridi@gmail.com\">aqfaridi@gmail.com</a>  </p>\n");
      out.write("         <p>\n");
      out.write("            Mobile : +91 7566062327  </p>\n");
      out.write("         <br />\n");
      out.write("        <p>    Pankaj Chaudhary </p>\n");
      out.write("        <p>\n");
      out.write("            Email : <a href=\"mailto:pankaj9310@gmail.com\">pankaj9310@gmail.com</a> </p>\n");
      out.write("        <p>\n");
      out.write("            Mobile : +91 8989931101 </p>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
