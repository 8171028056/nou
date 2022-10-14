
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>NOULM || LOGIN</title>
        
        <%@include file="linkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="headermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                
                <div class="col-sm-12">
                    <h3 style="font-weight:bold;color: darkred;" class="text-center">Login Form </h3>
                 
                    <form action="logincode.jsp" method="post">
                        <table class="table table-bordered" style="margin: 0px auto;width: 50%" >
                            <tr>
                                <th>User Id : </th>
                                <td>
                                    <input type="text" name="userid"  class="form-control" required="true" />
                                </td>
                            </tr>
                            <tr>
                                <th>Password : </th>
                                <td>
                  <input type="password" name="pwd"  class="form-control"   required="true" />
                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <input type="submit" value="LOGIN" class="btn btn-primary"  />
                                           
                                </td>
                            </tr>
                        </table>
                    </form>
                    
               
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="footermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
