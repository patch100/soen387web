<%-- 
    Document   : index
    Created on : Sep 28, 2016, 10:54:15 PM
    Author     : Mat
--%>
<jsp:useBean id="obj" class="P1.LoginBean"/>  
<jsp:setProperty property="*" name="obj"/> 

<%@ include file="header.jsp" %>
        <title>Welcome to the book store!</title>
    </head>
    <body>
        <%@ include file="main_menu.jsp" %>  
        
        <% 
            
            if (obj.getUname() != "" && session.getAttribute("session") == "TRUE")
            {
                %> <jsp:include page="search.jsp"></jsp:include> <%
                    
                
            }
            %> <jsp:include page="footer.jsp"></jsp:include>  <%
        %>
