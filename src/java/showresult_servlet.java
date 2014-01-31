/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.Config;
import java.sql.*;
/**
 *
 * @author aqfaridi
 */
public class showresult_servlet extends HttpServlet {
   HttpSession session=null;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String scode = request.getParameter("scode");
        String user = session.getAttribute("studentid").toString();
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        Statement stt=null;
        ResultSet rss=null;
        Config c = new Config();
        con = c.getcon();
        int cnt=0,rows;
        try {
            st=con.createStatement();
            stt=con.createStatement();
            String qry = "select count(*) as col from subjects wher subjectcode='"+scode+"'";
            rs = st.executeQuery(qry);
            if(rs.next())
                cnt = Integer.parseInt(rs.getString("col"));
            
            if(cnt==1)
            {
                //subject code exists
                java.util.Date date= new java.util.Date();
                Timestamp ts = new Timestamp(date.getTime());


               qry = "select * from exams where scode='"+scode+"'";
               rs = st.executeQuery(qry);
               if(rs.next())
               {
                   Timestamp sdate = rs.getTimestamp("startdate");
                   Timestamp edate =  rs.getTimestamp("enddate");
                   if(ts.compareTo(edate)>0)
                   {
                        //contest ended
                        qry = "select * from result"+scode+" where username='"+user+"'";
                        rss = stt.executeQuery(qry);
                        if(rss.next())
                        {
                            con.close();
                            response.sendRedirect("result.jsp");
                        }
                        else
                        {
                            //not given exam
                            con.close();
                            response.sendRedirect("studentprofile.jsp?NotGiven=True");
                        }


                   }
                   else
                   {
                       con.close();
                        response.sendRedirect("studentprofile.jsp?Unavailable=True");
                   }

                }

            }
            else
            {
                con.close();
                response.sendRedirect("studentprofile.jsp?ErrorCode=True");
            }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet showresult_servlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet showresult_servlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            con.close();
        }
        catch(Exception e){}
        
        finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        session  = request.getSession();
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
