<%@page import="com.gmit.model.StudentDetails"%>
<%@page import="com.gmit.model.CdcUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header Menu</title>
</head>
<body>
<%

CdcUser cdcuser= (CdcUser)session.getAttribute("cdcuser"); //returning obj
/* HttpServletRequest request;
HttpSession ssession = request.getSession(false); */
StudentDetails student = (StudentDetails)session.getAttribute("studentdetail");

if(cdcuser!= null)
{
	
%>

<!-- CDC AFTER LOGIN NAVS -->

 <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="homepage.jsp" class="d-block">
              <img src="images/logo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li>
                  <a href="login-cdc-user" class="nav-link text-left">Home</a>
                </li>
                <li class="has-children">
                  <a href="cdclogin" class="nav-link text-left">Notice</a>
                  <ul class="dropdown">
                    <li><a href="cdcviewplacementnotices">View Placement Notices</a></li>
                    <li><a href="post-notice">Post Placement Notice</a></li>
                    <li><a href="post-notice">Post a Notice</a></li>
                    <li><a href="post-notice">View Notice</a></li>
                  </ul>
                </li>
                <li>
                  <a href="Index.jsp" class="nav-link text-left">Placement Section</a>
                </li>
                <li>
                  <a href="courses.html" class="nav-link text-left">Student Details</a>
                </li>
                 <li>
                  <a href="cdc-event" class="nav-link text-left">Event</a>
                </li>
                <li class="has-children">
                  <a href="cdclogin" class="nav-link text-left">Training</a>
                  <ul class="dropdown">
                    <li><a href="show-ongoing-Training">View Ongoing Training</a></li>
                    <li><a href="post-training">Post Training</a></li>
                    
                  </ul>
                </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <a href="cdcuser-logout" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Log Out</a>
          </div>
         
        </div>




<!-- CDC AFTER LOGIN NAVS END -->
<%
}
else if(student != null)
{
%>
 <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="homepage.jsp" class="d-block">
              <img src="images/logo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li>
                  <a href="cdcviewplacementnotices" class="nav-link text-left">Placement  Notices</a>
                </li>
                <li class="has-children">
                  <a href="about.html" class="nav-link text-left">Profile</a>
                  <ul class="dropdown">
                    <li><a href="view-profile?id=${studentdetail.id}">View Profile</a></li>
                   
                    <li><a href="update-student-profile?id=${studentdetail.id}">Update Details</a></li>
                  </ul>
                </li>
                <li>
                  <a href="Index.jsp" class="nav-link text-left">Notification Panel</a>
                </li>
                <li>
                  <a href="feedback" class="nav-link text-left">Feedback Section</a>
                </li>
                <li>
                    <a href="contact.html" class="nav-link text-left">Contact</a>
                  </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <a href="student-logout" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Log Out</a>
          </div>
         
        </div>    
<%
}

else
{

%>
<!-- homepage index index -->
 <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="index.html" class="d-block">
              <img src="images/logoo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active">
                  <a href="home" class="nav-link text-left">Home</a>
                </li>
                <li class="has-children">
                  <a href="about.html" class="nav-link text-left">About Us</a>
                  <ul class="dropdown">
                    <li><a href="teachers.html">Our Teachers</a></li>
                    <li><a href="about.html">Our School</a></li>
                  </ul>
                </li>
                <li>
                  <a href="admissions.html" class="nav-link text-left">Admissions</a>
                </li>
                <li>
                  <a href="courses.html" class="nav-link text-left">Courses</a>
                </li>
                <li>
                    <a href="contact.html" class="nav-link text-left">Contact</a>
                  </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <div class="social-wrap">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-linkedin"></span></a>

              <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
            </div>
          </div>
          
          
         </div>
<!-- homepage index end -->


<%} %>


</body>
</html>