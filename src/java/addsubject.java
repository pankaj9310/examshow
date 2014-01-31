/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ICT
 */
public class addsubject extends HttpServlet {
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
        String sname=request.getParameter("subname");
        String scode=request.getParameter("scode");
        String author = session.getAttribute("facultyid").toString();
        ResultSet rs;
        try
        {
           Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
           
           
            String query="CREATE TABLE " + scode + "(qno int ,PRIMARY KEY(qno), qname text, opt1 varchar(300), opt2 varchar(300), opt3 varchar(300), opt4 varchar(300), ans varchar(300))";
            out.println(query);
            st.executeUpdate(query);
            String apcode= "result";
            apcode += scode;
            query="CREATE TABLE " + apcode + "(username varchar(50) primary key,score int default 0,correct int default 0,wrong int default 0,skipped int default 0, time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,flag int default 0)";
            st.executeUpdate(query);
            query="insert into subjects values('"+sname+"','"+scode+"','"+author+"')";
            st.executeUpdate(query);
            con.close();
            response.sendRedirect("facultyprofile.jsp");

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

