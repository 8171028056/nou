
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
                    <h3 style="font-weight:bold;">Complaint Form</h3>

                    <form action="complaintcode.jsp" method="post">
                        <table class="table table-bordered" style="height: 250px;">
                            <tr>
                                <th>Enter Subject :</th>
                                <td>
                                    <input type="text" name="subject" class="form-control" required="" />
                                </td>
                            </tr>   
                            <tr>
                                <th>Enter Complaint Text : </th>
                                <td>
                                    <textarea name="ctext" class="form-control" required=""></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" class="btn btn-primary" value="Submit" />
                                </td>
                            </tr>
                        </table>
                        <br>
                        <h4 class="text-center text-primary">Complaint List</h4>
                        <table class="table table-bordered table-hover" >
                            <tr class="bg-danger">
                                <th>Sr.No.</th>
                                <th>Enrollment No</th>
                                <th>Student Name</th>
                                <th>Subject</th>
                                <th>Complaint Text</th>
                                <th>Post Date</th>
                                <th>Status</th>
                                <th>Approve Date </th>
                            </tr>

                            <%
                            String q="select * from complaint a left join studentinfo b on b.enrollmentno=a.enrollmentno  where a.enrollmentno='"+session.getAttribute("studentid")+"'";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(q);
                            int n=1;
                            while(rs.next())
                            {
                                %>
             <tr class="bg-info">
              <td><%=n %></td> 
              <td><%=rs.getString("enrollmentno") %></td>
              <td><%=rs.getString("name") %></td>
              <td><%=rs.getString("subject") %></td>
              <td><%=rs.getString("complainttext") %></td>
              <td><%=rs.getString("posteddate") %></td>
              <td><%=rs.getString("status") %></td>
              <td><%=rs.getString("statusdate") %></td>
             </tr>
                                <%
                                n++;
                            }
                            
                            %>
                        </table>
                        <div style="height: 250px;"></div>

                    </form>

                </div>
            </div>

            <!--notification end-->

            <%@include file="studentfootermaster.jsp" %>

            <!-- outer end -->
        </div>   
    </body>
</html>
