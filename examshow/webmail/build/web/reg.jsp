<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="connection.Config"%>
<%
        String scode = request.getParameter("scode");

        String user = (String)session.getAttribute("studentid");

            out.println(user);
            if(user==null)
            {
                //not logged in
                response.sendRedirect("index.jsp");
            }
            else
        {

            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
            Config c = new Config();
            con = c.getcon();

            int qno=0,cnt=0,cnt2=0;
            try
            {


                st=con.createStatement();
                String qry = "insert into result"+scode+"(username) values('"+user+"')";
                st.executeUpdate(qry);
                con.close();
                response.sendRedirect("upcomingevents.jsp?Register=True");
            }

            catch(Exception e)
            {
                System.out.println("Error="+e);
            }

        }
%>