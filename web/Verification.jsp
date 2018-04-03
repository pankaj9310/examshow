<%-- 
    Document   : Verification
    Created on : 10 Jan, 2013, 11:41:23 PM
    Author     : ICT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,connection.Config,java.security.MessageDigest,sun.misc.*" %>
<jsp:scriptlet>
  String auth =  request.getParameter("authcode");
  String email=  request.getParameter("email");    
  Config c = new Config();
  Connection con = c.getcon();
  String query="Update users set flag=1 where authcode='"+auth+"' and email='"+email+"'";
  Statement st=con.createStatement();
  st.executeUpdate(query);
    
</jsp:scriptlet>


<!DOCTYPE html>
   <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Examshow</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css" />
                    <script type="text/javascript" src="assets/js/jquery.js"></script>
                    <script type="text/javascript" src="assets/js/jquery-1.7.1.min.js"></script>
                    <script type="text/javascript" src="assets/js/bootstrap-button.js"></script>
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
    <div class="navbar">
    <div class="navbar-inner">
        <div class="container">
        <div class="row">
            <div class="span5">
    <a href="index.jsp" class="brand"> <img src="./assets/img/logo.png" alt="CodeShare" width="100px" height="70px"/></a>
    <br/>
    <h1 class="brand" style="font-weight:bold;">Examshow</h1>
            </div>
            <br/>
            <div class="pull-right">

      <a class="btn btn-primary btn-block btn-lg " href="./login.jsp" style="color:white;font-weight: bold;text-decoration: none;">Login</a>

            </div>


        </div>

    </div>
    </div>
    </div>

            <div class="container">
                <div class="row">
        


        <h1>You are successfully verified. </h1>
            <h3>Now Login and update your profile and enjoy the services..</h3>
            <h4><a href="index.jsp"> Home </a></h4>

                </div></div>
              <%@include file="footer.jsp" %>
 
    </body>
</html>

