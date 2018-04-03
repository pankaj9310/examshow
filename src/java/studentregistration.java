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
import java.security.MessageDigest;
import sun.misc.*;
import mail.*;
import mail.MailVerify;
import mail.AuthCode;
import com.sun.mail.smtp.DigestMD5;
/**
 *
 * @author ICT
 */
public class studentregistration extends HttpServlet {

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
        String name=request.getParameter("sname");
        String rollno=request.getParameter("username");
        String passwd=request.getParameter("passwd");
        String institute=request.getParameter("institute");
        //String sem=request.getParameter("sem");
        String sem="00";
        String email=request.getParameter("email");
        String number=request.getParameter("number");
        //String d = request.getParameter("day");
        //String m = request.getParameter("month");
        //String y = request.getParameter("year");
        //String dob = d+"/"+m+"/"+y;
        //String sex=request.getParameter("sex");
        ResultSet rs;
           String dob="dd/mm/yyyy";
           String sex="gender";
           
        try
        {
            AuthCode authCode=new AuthCode();
            String code=authCode.generateCode();
            //password encription
            MessageDigest MD5=MessageDigest.getInstance("MD5");
            MD5.update(passwd.getBytes(),0,passwd.getBytes().length);
            byte[] hashvalue=MD5.digest();
            String newpasswd=new BASE64Encoder().encode(hashvalue);
            Config c = new Config();
            Connection con = c.getcon();
            Statement st = con.createStatement();
            String qry = "select count(*) as col from student where studentid ='"+rollno+"'";
            rs = st.executeQuery(qry);
            int check=0;
            if(rs.next())
            {
                check = Integer.parseInt(rs.getString("col"));
            }
            if(check==0)
            {
                String query="insert into student values('"+name+"','"+rollno+"','"+newpasswd+"','"+institute+"','"+sem+"','"+email+"','"+number+"','"+dob+"','"+sex+"','"+code+"')";
                out.println(query);
                st.executeUpdate(query);
                String msg="Your verification CODE is:"+code+" .<br/>To verify Click on this link http://www.codeoj.com/examshow/Verification.jsp?email="+email+"&authcode="+code+"";
                 System.out.print("msg is" +msg);
                 //mailing preocess
                out.print("msg is" +msg);
                MailVerify mv=new MailVerify(email, msg);
                mv.verify();
                con.close();
                response.sendRedirect("index.jsp?RegisterStudent=True");
            }
            else
            {
                con.close();
                response.sendRedirect("index.jsp?existsStudent=True");
            }

            con.close();
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
