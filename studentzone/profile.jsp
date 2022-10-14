
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>NOULM </title>
        
        <%@include file="studentlinkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="studentheadermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                
                <div class="col-sm-12">
                    
         <h3 style="font-weight:bold;">My Profile </h3>
         <hr />
              
         <%
         
            
             String cmd = "select  * from studentinfo  where enrollmentno='"+session.getAttribute("studentid")+"'";
             DbManager db=new DbManager();
             ResultSet rs=db.selectQuery(cmd);
             if(rs!=null)
             {
                 if(rs.next())
                 {
                 String img="";
                 String pic=rs.getString("profilepic")+"";
                 if(pic.equals("null"))
                     {
                     img="images/cont.png";
                     }
                 else
                 {
                 img="../uploadimage/"+pic;
                 }
                     
         %>
         
         <table  class="table table-bordered">
             <tr>
                 <th>Student Pic</th>
                 <td>
                     <img src="<%=img%>" height="100px" width="100px"  />
                 </td>
             </tr>
             <tr>
                 <th>Student Name :</th>
                 <td><%=rs.getString("name") %></td>
             </tr>
             
              <tr>
                 <th>Mobile No :</th>
                 <td><%=rs.getString("contactno") %></td>
             </tr>
             
             <tr>
                 <th>Email Id :</th>
                 <td><%=rs.getString("emailaddress") %></td>
             </tr>
             
             <tr>
                 <th>Address :</th>
                 <td><%=rs.getString("address") %></td>
             </tr>
             <tr>
                 <td colspan="2" align="center">
                     <a class="btn btn-primary" href="editprofile.jsp">Edit Profile</a>
                 </td>
             </tr>    
             
         </table>
         
         <%
                 }
             }
         %>
         
         </div>
            </div>
                        
            <!--notification end-->
           
            
            <%@include file="studentfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
