<%-- 
    Document   : logout
    Created on : Oct 9, 2016, 8:47:19 PM
    Author     : Mat
--%>

<% session.setAttribute("session", "FALSE"); %>
<% out.print("Logged out."); %>

<%@ include file="index.jsp" %>  
