<%-- 
    Document   : login
    Created on : Oct 7, 2016, 11:01:03 PM
    Author     : Mat
--%>
<%@ include file="header.jsp" %>
        <title>Book Store Login</title>
    </head>
    <body>
        <%@ include file="main_menu.jsp" %>  
        
        <hr/>  

        <div class="container">

      <form action="LoginServlet" method="post" class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <% String error_msg = (String)session.getAttribute("error_msg");
                if (error_msg != null){
                    out.print("<span style=\"color:red;\">" + error_msg + "</span>");
                    session.setAttribute("error_msg", null);
                }
        %>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="username" id="inputEmail" name="uname" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" name="pass" class="sr-only">Password</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <!--<label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>-->
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    </body>
</html>
