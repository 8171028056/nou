<%@page import="connect.DbManager"%>
<!-- headline start -->
            <div class="row bg-danger text-light">
                <div class="col-sm-4">
                    Welcome to Student Zone
                </div>
                
                <div class="col-sm-4">
                    <%=new DbManager().getDate() %>
                </div>
                
                <div class="col-sm-4">
                    <%=session.getAttribute("studentid") %>
                </div>
                
            </div> 
            <!--headline end-->
            
             <!--header start-->
            <div class="row">
                <div class="col-sm-1 mt-4">
                    <img src="images/logo.png" class="logo"/>
                </div>
                <div class="col-sm-7 mt-4">
                    <h4>Nalanda eGyan Portal</h4>
                    <p>(An Initiative Taken By Nalanda Open University)</p>
                </div>
                <div class="col-sm-4"></div>
                
            </div>
            
            
            <!--header end-->
            
             <!--navbar--->
            
            <div class="row mt-3">
              <div class="col-sm-12 p-0 bg-warning">
                   <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">NOULMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="welcome.jsp">Dashboard</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="feedback.jsp">Feedback</a>
        </li>
        
        <li class="nav-item dropdown"  style="display: none;">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Course
          </a>
          <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="course.jsp">Courses</a></li>
              <li><a class="dropdown-item" href="studycenter.jsp">Study Centers</a></li>
          </ul>
        </li>
        
        
        <li class="nav-item">
       <a class="nav-link" href="course.jsp">Course</a>
        </li>
        
         
        <li class="nav-item">
       <a class="nav-link" href="studymaterial.jsp">Study Material</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="complaint.jsp">Complaint</a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-link" href="profile.jsp">Profile</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="changepassword.jsp">Change Password</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="logout.jsp">Logout</a>
        </li>
        
      </ul>
     
    </div>
  </div>
</nav> 
            </div>  
                
            </div>
             
             
             <!-- navbar end-->
             
             
             
            
            
            
            