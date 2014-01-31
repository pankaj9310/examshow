package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.PrintWriter;
import connection.Config;

public final class makepaper_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title></title>\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.ico\"/>\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"assets/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery-1.7.1.min.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/bootstrap-button.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"assets/js/jquery.validate.min.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-tab.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-carousel.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/bootstrap-dropdown.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"assets/js/modal.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"script1.js\"></script>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("         .navbar-inner{\n");
      out.write("\t\t\t background:#000;\n");
      out.write("\t\t\t border-bottom:5px solid #007AF4;\n");
      out.write("\t\t\t height:70px;\n");
      out.write("\n");
      out.write("\t\t\t }\n");
      out.write("\t\t\t.navbar-inner .brand{color:#FFF}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"navbar\">\n");
      out.write("<div class=\"navbar-inner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("<a href=\"#\" class=\"brand\"> <img src=\"./assets/img/examshow.png\" alt=\"Exam Show\" width=\"100px\" height=\"70px\"/></a>\n");
      out.write("<br/>\n");
      out.write("<h1 class=\"brand\" style=\"font-weight:bold;\">Exam Show</h1>\n");
      out.write("<form action=\"logout\" method=\"post\" class=\"pull-right\">\n");
      out.write("<button class=\"btn btn-primary\" > logout </button>\n");
      out.write("</form>\n");
      out.write("<p class=\"pull-right\" style=\"color:white;\">\n");
      out.write("<br />\n");

             String uname = (String)session.getAttribute("username");
             if(uname==null)
                {
                    response.sendRedirect("index.jsp");
                }
            else
            {
                   out.println("<b> Welcome , "+uname+"</b>");
            }

      out.write("\n");
      out.write("&nbsp;&nbsp;\n");
      out.write("\n");
      out.write("</p>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"container well\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("   <div id=\"maincontent\" class=\"span5 pull-right\">\n");
      out.write("            <div id=\"myTabContent\" class=\"tab-content\">\n");
      out.write(" <div id=\"home\" class=\"tab-pane fade in active\">\n");
      out.write("     <div class=\"span10\">\n");
      out.write("            <center>    <img src=\"assets/img/back.png\" alt=\"Online Exam System\" height=\"300px\" width=\"400px\"/>  </center>\n");
      out.write("        <p style=\"font-weight: bold;font-size:20px;color:#808080;line-height: 25px;\">\n");
      out.write("            <bold style=\"color:black;\">On-line Exam System</bold> is very useful for Educational Institute to prepare an exam, safe the time that will take to check the paper and prepare mark sheets. It will help the Institute to testing of students and develop their skills. But the disadvantages for this system, it takes a lot of times when you prepare the exam at the first time for usage. And we are needs number of computers with the same number of students.\n");
      out.write("        </p>\n");
      out.write("        <p style=\"font-weight: bold;font-size:20px;color:#808080;line-height: 25px;\"  >\n");
      out.write("The effective use of \"On-line Exam System\", any Educational Institute or training centers can be use it to develop their strategy for putting the exams, and for getting better results in less time.\n");
      out.write("        </p>\n");
      out.write("            </div>\n");
      out.write(" </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form action=\"mkpaper\" id=\"contact-form\" class=\"form-horizontal\" method=\"post\">\n");
      out.write("                        <table class=\"table\" style='background-color:white;'>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Question Number:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"qno\" id=\"qno\" placeholder=\"Question Number\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Question:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"ques\" id=\"ques\" placeholder=\"Question\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Option 1:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"op1\" id=\"op1\" placeholder=\"Option 1\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                               <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Option 2:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"op2\" id=\"op2\" placeholder=\"Option 2\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                               <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Option 3:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"op3\" id=\"op3\" placeholder=\"Option 3\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                          <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Option 4:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"op4\" id=\"op4\" placeholder=\"Option 4\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                          <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Answer:\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" class=\"span5\" name=\"ans\" id=\"ans\" placeholder=\"Answer\" required=\"true\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                         <center> <button type=\"submit\" class=\"btn btn-success\">Update</button></center>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("          \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("</body>\n");
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
