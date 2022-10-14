
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>NOULM || REGISTRATION</title>
        
        <%@include file="linkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="headermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row " >
                
                <div class="col-sm-12 mt-5">
                    <h3 style="font-weight:bold;color: darkred; font-size:45px;" class="text-center">Student Registration Form </h3>
            <hr style="margin-bottom: 50px;"/>       
                    <form action="regcode.jsp" method="post">
                        
                        <div class="row">
                            
             <!--- form input tag start--->               
  <div class="col-sm-6  mb-3">
  <label for="enrollmentno" class="form-label">
      <b>Enrollment No</b> <sup style="color: red;">*</sup>
  </label>
      <input type="text" class="form-control" id="enrollmentno" name="enrollmentno" required="true" />
 </div> 
           
             
  <div class="col-sm-6  mb-3">
  <label for="name" class="form-label">
      <b>Student Name</b> <sup style="color: red;">*</sup>
  </label>
      <input type="text" class="form-control" id="name" name="name" required="true" />
 </div>  
            
             
  <div class="col-sm-6  mb-3">
  <label for="fname" class="form-label">
      <b>Father's Name</b><sup style="color: red;">*</sup>
  </label>
      <input type="text" class="form-control" id="fname" name="fname" required="true" />
 </div>  
             
 <div class="col-sm-6  mb-3">
  <label for="mname" class="form-label">
      <b> Mother's Name</b> <sup style="color: red;">*</sup>
  </label>
      <input type="text" class="form-control" id="mname" name="mname" required="true" />
 </div>  
         
   <div class="col-sm-6  mb-3">
  <label for="gender" class="form-label">
      <b>Gender</b> <sup style="color: red;">*</sup>
  </label>
       <input type="radio"  id="gender" name="gender" required="true" value="Male" /> Male
             
       <input type="radio"  id="gender" name="gender" required="true" value="Female" /> Female
       
 </div>  
             
  <div class="col-sm-6  mb-3">
  <label for="address" class="form-label">
      <b>Address</b> <sup style="color: red;">*</sup>
  </label>
      <input type="text" class="form-control" id="address" name="address"  required="true" />
 </div>    
             
   <div class="col-sm-6  mb-3">
  <label for="contactno" class="form-label">
      <b>Contact No</b><sup style="color: red;">*</sup>
  </label>
       <input type="number" class="form-control" id="contactno" name="contactno"  required="true" />
 </div>    
   
 <div class="col-sm-6  mb-3">
  <label for="email" class="form-label">
      <b>Email Id</b> <sup style="color: red;">*</sup>
  </label>
     <input type="email" class="form-control" id="email" name="email"  required="true" />
 </div> 
             
 <div class="col-sm-6  mb-3">
  <label for="dob" class="form-label">
      <b>DOB</b> <sup style="color: red;">*</sup>
  </label>
     <input type="date" class="form-control" id="dob" name="dob"  required="true" />
 </div> 
        
      
 <div class="col-sm-6  mb-3">
  <label for="aadharno" class="form-label">
      <b>Aadhar No</b> <sup style="color: red;">*</sup>
  </label>
     <input type="number" class="form-control" id="aadharno" name="aadharno"  required="true" />
 </div> 
        
  <div class="col-sm-6  mb-3">
  <label for="course" class="form-label">
      <b>Course</b> <sup style="color: red;">*</sup>
  </label>
      <select class="form-control" name="course" id="course" required="true">
          <option value="">Select</option>
          <option>MCA</option>
          <option>BCA</option>
          <option>B.Tech</option>
          <option>Diploma</option>
      </select>
      
 </div> 
 
 
                   
  <div class="col-sm-6  mb-3">
  <label for="year" class="form-label">
      <b>Year</b><sup style="color: red;">*</sup>
  </label>
      <select class="form-control" name="year" id="year" required="true">
          <option value="">Select</option>
          <option>First Year</option>
          <option>Second Year</option>
          <option>Third Year</option>
          <option>Fourth Year</option>
      </select>
      
 </div> 
          
 <div class="col-sm-6  mb-3">
  <label for="centername" class="form-label">
      <b>Center Name</b> <sup style="color: red;">*</sup>
  </label>
     <input type="text" class="form-control" id="centername" name="centername"  required="true" />
 </div>  
             
             <div class="col-sm-6  mb-3">
  <label for="password" class="form-label">
      <b>Password </b><sup style="color: red;">*</sup>
  </label>
                 <input type="password" class="form-control" id="password" name="password"  required="true" />
 </div>  
             
             
             
             <div class="col-sm-3">
                 <input type="submit"  value="SUBMIT" class="btn btn-primary form-control" style="margin-top: 30px;" />
             </div>
             
             
       <!--- form input tag end--->   
       
                        </div>
                        
                    </form>
                    
                    
                  </div>  
                    
                </div>
                    
               
                        
            <!--notification end-->
            
            <%@include file="footermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
