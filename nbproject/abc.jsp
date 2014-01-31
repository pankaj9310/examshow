<%@page import="java.sql.*" %>

<%

    try{
        Connection con;
        Statement st;
        ResultSet rs;

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examshow","root","root");
            st=con.createStatement();
            String userid = session.getAttribute('studentid').toString();
            String q = "select * from student where studentID= '"+userid+"'";
            st =con.createStatement();
            rs=st.executeQuery(q);
            if(rs.next())
            {
                String name = rs.getString("studentname");
                String  sem = rs.getString("semester");
                String email = rs.getString("email");
                String mobile = rs.getString("mobile");
                String dob = rs.getString("dob");
                String sex = rs.getString("sex");
            }
			out.println("<table class='table table-hover' style='background-color:white;' >");
			
        %>
		     <tr style="font-weight:bold;">
                              <td>Name : </td>
                              <td><%=name%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Semester : </td>
                              <td><%=sem%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Email : </td>
                              <td><%=email%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Mobile: </td>
                              <td><%=mobile%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Date of Birth : </td>
                              <td><%=dob%></td>
                          </tr>
						   <tr style="font-weight:bold;">
                              <td>Gender : </td>
                              <td><%=sex%></td>
                          </tr>
			<%
			</table>
			%>			