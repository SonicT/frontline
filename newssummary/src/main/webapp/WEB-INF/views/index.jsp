<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.frontline.newssummary.vo.MainSummaryListVO"%> 
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>frontline_newssummary</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    
  </head>
  <body>
    <!-- Navigation -->
	<%@include file="navigation.jsp" %>
  	<!-- ./Navigation -->
    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
        <%
	List<MainSummaryListVO> list = (List<MainSummaryListVO>) request.getAttribute("list");
		for(int i = 0; (list != null) && i < 4; i++){
			String active = "active";
			MainSummaryListVO msvo = (MainSummaryListVO) list.get(i);
		%>
          <div class="carousel-item <%if(i==0){ %><%=active%><%} %>" style="background-image: url('img/IMG_2198.gif')">
            <div class="carousel-caption d-none d-md-block">
              <h3 style="stroke: black;"><%= msvo.getTitle() %></h3>
            </div>
          </div>
          	<%
				}
			%>   
          <!-- Slide end-->
          </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>
    <!-- Page Content -->
    <div class="container">

      <!-- Portfolio Section -->
      <b></b>
      <h2>주요 뉴스</h2>
      <div class="row">
<%
		for(int i = 4; (list != null) && i < 10; i++){
			MainSummaryListVO msvo = (MainSummaryListVO) list.get(i);
%>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="img/uu2.jpg" alt=""></a>
            <div class="card-body">
              <h5 class="card-title">
                <a href="#"><%= msvo.getTitle() %></a>
              </h5>
              <p class="card-text"><%= msvo.getRank() %> <%= msvo.getPopularOid() %></p>
            </div>
          </div>
        </div>
			<%
				}
			%>       
      <!-- /.row -->
      <hr>
      <!-- Call to Action Section -->
      <div class="row mb-4">
        <div class="col-md-8">
  <!--         <div class="col-md-4">
          <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
        </div> -->
      </div>
    </div>
    </div>
    <!-- /.container -->
    </div>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>
s    <!-- Bootstrap core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>