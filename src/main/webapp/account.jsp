  <%@page import="com.learn.mycart.dao.UserDao"%>
<%@page import="java.util.Map"%>
<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="com.learn.mycart.entities.User"%>
<%@page import="com.learn.mycart.servlets.UserOperationServlet"%>


<%User user = (User) session.getAttribute("current-user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
        response.sendRedirect("login.jsp");
        return;}
        UserDao dao = new UserDao(FactoryProvider.getFactory());
         int id=user.getUserId();
        String name=user.getUserName();
        String email=user.getUserEmail();
        String phone=user.getUserPhone();
       
       
        
        
        
        
    
        
   %>
   <h1>Account Details</h1>
   <p><h3>Name:</h3> <div class="name_det"> <%=name%></div> <br>
   <h3>Email-ID</h3> <div class="email_det"> <%=email%></div> <br>
   <h3>Phone No.</h3> <div class="phone_det"> <%=phone%> </div></p>
     

   
   