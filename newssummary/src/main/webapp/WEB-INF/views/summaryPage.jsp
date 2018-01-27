<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%@ page import="com.frontline.newssummary.vo.RollingNewsVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- Navigation -->
<%@include file="navigation.jsp" %>
  	<!-- ./Navigation -->

  <head>
  <!-- rollingText script -->
  <script src="js/chat/rollingText.js"> </script>
  <script src = "js/chat/chatpagescript.js"></script>
  
  <style type="text/css">
		#rollingText .viewArea{height:20px;position:relative;overflow:hidden;}
			#rollingText ul{position:absolute; top:0px;}
			#rollingText .control a.on {color:red;}
</style>
   <script src="http://code.jquery.com/jquery-latest.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>요약문 페이지</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

	<Style>
	.summaryContent {background-color:gray;}
	</Style>
  </head>

  <body>
\    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">기사아
        <small>제목</small>
      </h1>
      
		<div class=row>
      <div class="col-lg-8" id="summaryContent">
          	<h3>요약문이다</h3>
          
          	<br/>
          	<p>피카츄</p>
          	<p>라이츄</p>
          	<p>파이리</p>
          	<p>꼬부기</p>
     
        <!-- Map Column -->
        <h3>사용자 요약문</h3>
        <p>피카츄 너로정햇닷!</p>
     
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      
          <h3>사용자 요약문 작성칸</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Full Name:</label>
                <input type="text" class="form-control" id="userid" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>	
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Message:</label>
                <textarea rows="10" cols="100" class="form-control" id="content" required data-validation-required-message="내용을 입력해주세요" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary" id="sendMessageButton">등록하기</button>
            <br/>
          </form>
		</div>
		
		<!-- chatting div -->
		<div class="col-md-4" id="summaryContent">
				
		    <!-- 로그인한 상태일 경우와 비로그인 상태일 경우의 chat_id설정 -->
    <c:if test="${(login.id ne '') and !(empty login.id)}">
        <input type="hidden" value='${login.id }' id='chat_id' />
    </c:if>
    <c:if test="${(login.id eq '') or (empty login.id)}">
        <input type="hidden" value='<%=session.getId().substring(0, 6)%>'
            id='chat_id' />
    </c:if>
    
        
        <!-- rolling text -->
		<div id="rollingText">
	<div class="viewArea">
		<ul class="notice-list">
		<%
	List<RollingNewsVO> Rnewslist = (List<RollingNewsVO>) request.getAttribute("rollingNewsList");
		for(int i = 0; (Rnewslist != null) && i < 12; i++){
			String active = "active";
			RollingNewsVO rnvo = (RollingNewsVO) Rnewslist.get(i);
		%>
			<li><a href="<%=rnvo.getUrl()%>"><%=rnvo.getTitle()%></a></li>
			<% } %>
		</ul>
	</div>
	<div class="control fl">
		<a href="#" class="play">재생</a>
		<a href="#" class="stop">정지</a>
	
  		<span id="bt5">
			<a href="#" class="prev">이전</a>
			<a href="#" class="next">다음</a>
		</span>
</div></div>
	<script type="text/javascript">fn_article3('rollingText','bt5',true);</script>
		<!-- ./rolling text -->
    
    
    
    <!--     채팅창 -->
    <div id="_chatbox" style="border:2px solid #aaaaaa;border-radius: 15px; display: none">

    
    
        <fieldset>

       
            <div  id="messageWindow" style="height:70%; overflow: scroll;" ></div >
            <div style="text-align:center;">
            
            <br /> <input id="inputMessage" type="text"/>
            <input type="submit" value="send" onclick="send()" />
            <br />
            </div>
        </fieldset>
    </div>
    <img class="chat" src="img/chat.png" />
		</div><!-- /.chatting div -->
      <!-- /.row -->
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

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
  </body>
<script>
    $(".chat").on({
        "click" : function() {
            if ($(this).attr("src") == "img/chat.png") {
                $(".chat").attr("src", "./img/chathide.png");
                $("#_chatbox").css("display", "block");
            } else if ($(this).attr("src") == "./img/chathide.png") {
                $(".chat").attr("src", "img/chat.png");
                $("#_chatbox").css("display", "none");
            }
        }
    });
</script>
</html>