/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.*;
/**
 *
 * @author ICT
 */
public class studentpasschange extends HttpServlet {

    HttpSession session;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String current = request.getParameter("passwd");
        String change = request.getParameter("apasswd");
        String userid = session.getAttribute("studentid").toString();
        ResultSet rs;
        int a=0;
        try
        {
            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String str = "select count(*) as colname from student where studentID = '"+userid+"' and password='"+current+"'";
            rs = st.executeQuery(str);
            if(rs.next())
            {
                a = Integer.parseInt(rs.getString("colname"));
            }

            if(a==1)
            {
                String query="UPDATE student SET password='"+change+"' WHERE password='"+current+"' AND studentID='"+userid+"'";
                st.executeUpdate(query);
                con.close();
                response.sendRedirect("studentprofile.jsp?Success=True");
            }
            else
            {
                con.close();
                response.sendRedirect("studentprofile.jsp?Failed=True");
            }
            con.close();

        }
        catch(Exception e)
        {

           out.println("Error="+e);
        }


    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
