 <%@ include file="/header.jsp" %>
 <%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.util.*,java.io.*"%>
<%@ page import="org.cysecurity.cspf.jvl.model.DBConnect"%>

<%
if(session.getAttribute("isLoggedIn")!=null)
{
 Connection con=new DBConnect().connect(getServletContext().getRealPath("/WEB-INF/config.properties"));
         
  
                 else
                 {
                     out.print("<br/>No Card Details Found: <a href='changeCardDetails.jsp'>Add Card</a><br/>");
                 }
              }
   }
   else
   {
       out.print("ID Parameter is Missing");
   }
     
   out.print("<br/><ul type='square'>");
   out.print("<li><a href='"+path+"/vulnerability/csrf/change-info.jsp'>Change Description</a></li>");
    out.print("<li><a href='"+path+"/vulnerability/csrf/changepassword.jsp'>Change Password</a></li>");
     out.print("<li><a href='"+path+"/vulnerability/idor/change-email.jsp'>Change Email</a></li>");
      out.print("<li><a href='"+path+"/vulnerability/Messages.jsp'>Messages </a></li>"); 
         out.print("<li><a href='"+path+"/vulnerability/SendMessage.jsp'>Send Message </a></li>"); 
         out.print("</ul><br/>");
    out.print("<br/><a href='"+path+"/vulnerability/forum.jsp'>Return to Forum &gt;&gt;</a>");     
    
}
else
{
    out.print("Please login to see Your Profile");
}

  %>
  
 <%@ include file="/footer.jsp" %>
