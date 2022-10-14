
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
         <h3 style="font-weight:bold;">Course List</h3>
               
         
          <table class="table table-bordered table-hover">
                 <tr class="bg-danger">
                     <th>Sr.No.</th>
                     <th>Course Name</th>
                     <th>Course Type</th>
                     <th>Course Duration</th>
                     <th>Course Image</th>
                    
                 </tr>  
                 <%
                 String cmd ="select * from courseinfo";
                 DbManager db=new DbManager();
                 ResultSet rs=db.selectQuery(cmd);
                 int n=1;
                 while(rs.next())
                 {
                  %>
                  <tr class="bg-info">
                      <td><%=n %></td>
                      <td><%=rs.getString("coursename") %></td>
                       <td><%=rs.getString("coursetype") %></td>
                        <td><%=rs.getString("courseduration") %></td>
                        <td>
                            <img height="200px" width="200px" src="../uploadimage/<%=rs.getString("courseimage") %>" />
                        </td>
                        
                  </tr>
                  <%
                     n++;
                 }
                 %>
             </table>
         
         
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="studentfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
