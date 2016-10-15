<%@page import="P1.LoginDao"%>  
<jsp:useBean id="obj" class="P1.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate("", "");  
if(status){  
out.println("Welcome " + obj.getUname() + "!");  
session.setAttribute("session","TRUE");
session.setAttribute("UserName",obj.getUname());


%> <jsp:include page="index.html"></jsp:include>  <%
 
}  
else  
{  
out.print("Sorry, email or password error"); 

%> <jsp:include page="index.jsp"></jsp:include>  <%
}  


%> 

 