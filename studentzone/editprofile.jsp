
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
                 img=pic;
                 }
                     
         %>
         
         <form  action="../updateprofile" method="post" enctype="multipart/form-data"  >
         <table  class="table table-bordered">
             <tr>
                 <th>Student Pic</th>
                 <td>
                     <input type="file" name="filepic" class="form-control" required="" />
                 </td>
             </tr>
             <tr>
                 <th>Student Name :</th>
                 <td>
                     <input  type="text" name="name" value="<%=rs.getString("name") %>"  class="form-control" required=""  />
                 </td>
             </tr>
             
              <tr>
                 <th>Mobile No :</th>
                 <td>
                     <input type="text" name="contactno" value="<%=rs.getString("contactno") %>" class="form-control"  required="" />
                 </td>
             </tr>
             
             <tr>
                 <th>Email Id :</th>
                 <td>
                     <input  type="email" name="emailaddress" value="<%=rs.getString("emailaddress") %>" class="form-control"  required=""  />
                 </td>
             </tr>
             
             <tr>
                 <th>Address :</th>
                 <td>
                     <textarea name="address" class="form-control" required="">
                         <%=rs.getString("address") %>
                     </textarea>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" align="center">
                     <input type="submit" value="Update Profile"  class="btn btn-primary" />
                 </td>
             </tr>    
             
         </table>
                </form>
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
