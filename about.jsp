
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>NOULM || ABOUT US</title>
        
        <%@include file="linkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="headermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                <div class="col-sm-4 border p-0">
                    <div class="bg-danger text-light p-1 rounded rounded-3 text-center">
                        <h4>Notice Board</h4>
                    </div>
                    <%@include file="notice.jsp" %>
                </div>
                <div class="col-sm-8">
                    <h3 style="font-weight:bold;">About US</h3>
                    <p style="font-weight:bold;"><span style="font-size: 30px; color:blue;"><b>T</b></span>he Nalanda Open University is the only University in
the State of Bihar meant for imparting learning
exclusively through the system of distance education.
The University was established in March, 1987 by an
ordinance, promulgated by the Government of Bihar.
Later, Nalanda Open University Act, 1995 was passed by
the Bihar Legislature, replacing the Ordinance, and the
University came under the authority and jurisdiction of
the new Act automatically. The University is named after
the famous Nalanda University of Ancient India.</p>
<p><span style="font-size: 20px; color:red;"><b>N</b></span>alanda Open University welcomes all our students, faculties & study centres to the very new & innovative online study portal NOU e-Gyan. The portal is a unique initiative by Hon'ble Vice-Chancellor Prof. (Dr.) K C Sinha, which aims at providing online study material to the students of NOU.
The portal is accessible from any hook and corner of the world if the system allows the permission to its users. It is also fully secured and accessible 24 x 7 to its authorised users. It will resolve the academic issues such as E-content Distribution, Delivery, Tracking, Assessment, Progress Monitoring & Controlling of all stakeholders of the system i.e. students, teachers, study centre administrators as well as Nalanda Open University Admins when they are at a distance.</p>
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="footermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
