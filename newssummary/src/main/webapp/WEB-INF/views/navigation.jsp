<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FrontLine - News Squeeze</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    
    <!-- login css -->
    <link href="css/common.css" rel="stylesheet" />
	<link href="css/layout.css" rel="stylesheet"/>
	
	<!-- ModalWindow script -->
  	<script src="js/jquery.leanModal.min.js"></script>
    
</head>
<body>
	<%
		boolean isLogin = false;
    	String memId = null;
    		
    	String LoginId = (String)session.getAttribute("LoginId");
    	if(LoginId != null) {
    		isLogin = true;
    	}
    	
	%>


	<!-- login window part (hidden)-->
	<div id="loginmodal" style="display:none;">
	<h2>LOGIN</h2>
	<div class="p_c_text">회원이 되시면 여러가시 혜택을 누리실 수 있습니다.</div>
	<div class="login_line">
	<form name="inform"  method="post" action="loginForm">
		<div class="box_in">
		<input type="text" name="id" id="id" size="23" placeholder="아이디">
		<input type="password" name="pw" id="pw" size="23" placeholder="비밀번호">
		</div>
		<input type="submit" value="로그인" class = "btn_login"/>
		</form>
	</div>
	<div class="find_join"><a href="findLogin">아이디 / 비밀번호 찾기</a> | <a href="register">회원가입</a></div>
</div>

	<!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.html">News Summary</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#loginmodal" id="modaltrigger" ><%= isLogin ? LoginId+"님" : "로그인" %></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="politics">정치</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="summaryPage">summaryPage</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="likeHateTest">likeHateTest</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Portfolio
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                <a class="dropdown-item" href="faq.html">FAQ</a>
                <a class="dropdown-item" href="404.html">404</a>
                <a class="dropdown-item" href="pricing.html">Pricing Table</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    	<!-- ./Navigation -->
    	
    	<!-- login windows script -->
    <script type="text/javascript">
		$(function(){
  			$('#loginform').submit(function(e){
    			return false;
  			});
  
  			$('#modaltrigger').leanModal({ 
  				top: 110, overlay: 0.8, closeButton: ".hidemodal" });
		});
</script>
    	
</body>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>