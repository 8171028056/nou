
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
  <h3 style="font-weight:bold;">Study Material List </h3>
  
  <br/>
  
   <table class="table table-bordered">
                         <tr class="bg-danger">
                         <th>Sr.No</th>
                         <th>Course Name</th>
                         <th>Year</th>
                         <th>File Name</th>
                         <th>Download</th>
                         <th>Upload Date</th>
                          
                         </tr>
                         <%
                         
        String cmd="select b.coursename,a.* from studymaterial a left join courseinfo b on b.courseid=a.coursename";
        
        DbManager db=new DbManager();
        
        ResultSet row=db.selectQuery(cmd);
        int n=1;
        while(row.next())
        {
        %>
        <tr>
            <td><%=n %></td>
            <td><%=row.getString("coursename") %></td>
            <td><%=row.getString("year") %></td>
            <td><%=row.getString("filename") %></td>
            <td><%=row.getString("uploaddate") %></td>
            <td>
                <a  target="_blank" href="../uploadimage/<%=row.getString("filename") %>">Download</a>
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
