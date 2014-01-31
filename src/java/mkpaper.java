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
import connection.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author ICT
 */
public class mkpaper extends HttpServlet {
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
        String scode=session.getAttribute("subcode").toString();
        String qno=request.getParameter("qno");
        String qname=request.getParameter("ques");
        String opt1=request.getParameter("op1");
        String opt2=request.getParameter("op2");
        String opt3=request.getParameter("op3");
        String opt4=request.getParameter("op4");
        String ans=request.getParameter("ans");
        ResultSet rs;
        try
        {
            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String query="insert into " + scode + " values("+qno+",'"+qname+"','"+opt1+"','"+opt2+"','"+opt3+"','"+opt4+"','"+ans+"')";
            out.println(query);
            st.executeUpdate(query);

            query= "ALTER TABLE result"+scode+" ADD q"+qno+" varchar(300)";
            out.println(query);
            
            st.executeUpdate(query);
            con.close();
            response.sendRedirect("makepaper.jsp?Success=True&scode="+scode );
        }
        catch(Exception e)
        {
            System.out.println("Error="+e);
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
        session = request.getSession();
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
