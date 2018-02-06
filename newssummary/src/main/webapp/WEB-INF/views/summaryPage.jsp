<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<%@ page import="com.frontline.newssummary.vo.RollingNewsVO"%>
<%@ page import="com.frontline.newssummary.vo.SummaryVO"%>
<%@ page import="com.frontline.newssummary.vo.SummaryListVO"%>
<%@ page import="com.frontline.newssummary.vo.MemberVO" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Navigation -->
<%@include file="navigation.jsp" %>
  	<!-- ./Navigation -->

  <head>
  <!-- rollingText script -->
  <script src="js/chat/rollingText.js"> </script>

  
  <style type="text/css">
		#rollingText .viewArea{height:20px;position:relative;overflow:hidden;}
			#rollingText ul{position:absolute; top:0px;}
			#rollingText .control a.on {color:red;}
</style>
   <script src="http://code.jquery.com/jquery-latest.js"></script>
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
    <!-- Page Content -->
    <div class="container">
        <%
        SummaryListVO selectedSummary = (SummaryListVO) request.getAttribute("selectedSummary");
		%>
      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3"><%=selectedSummary.getTitle() %></h1>
      
		<div class=row>
      <div class="col-lg-8" id="summaryContent">
      		<img src="<%=selectedSummary.getImg() %>">
          	<h3><%=selectedSummary.getContent() %></h3>
          
        <!-- Map Column -->
        <h3>사용자 요약문</h3>
        <p>피카츄 너로정햇닷!</p>
     
      <!-- /.row -->

      
          <h3>사용자 요약문 작성칸</h3>
          
          <!-- sentReply test -->
          
          
    	<input type="hidden" id="board_id" name="board_id" value="${boardView.id}" />
    	<div align="center">
    		</br>
    		</br>
   			<table border="1" width="1200px" >
   				<tr>
   					<td colspan="2" align="right">
   						<input type="password" id="password" name="password" style="width:200px;" maxlength="10" placeholder="패스워드"/>
   						<button id="modify" name="modify">글 수정</button>
   						<button id="delete" name="delete">글 삭제</button>
   					</td>
   				</tr>
   				<tr>
   					<td width="900px">
						제목: ${boardView.subject}
					</td>
					<td>
						작성자: ${boardView.writer}
					</td>
   				</tr>
   				<tr height="500px">
   					<td colspan="2" valign="top">
   						${boardView.content}
   					</td>
   				</tr>
   			</table>
   			<table border="1" width="1200px" id="reply_area">
   				<tr reply_type="all"><!-- 뒤에 댓글 붙이기 쉽게 선언 -->
   					<td colspan="4"></td>
   				</tr>
	   			<!-- 댓글이 들어갈 공간 -->
	   			<c:forEach var="replyList" items="${replyList}" varStatus="status">
					<tr reply_type="<c:if test="${replyList.depth == '0'}">main</c:if><c:if test="${replyList.depth == '1'}">sub</c:if>"><!-- 댓글의 depth 표시 -->
			    		<td width="870px">
			    			<c:if test="${replyList.depth == '1'}"> → </c:if>${replyList.reply_content}
			    		</td>
			    		<td width="100px">
			    			${replyList.reply_writer}
			    		</td>
			    		<td width="100px">
			    			<input type="password" id="reply_password_${replyList.reply_id}" style="width:100px;" maxlength="10" placeholder="패스워드"/>
			    		</td>
			    		<td>
			    			<button name="reply_del" reply_id = "${replyList.reply_id}">삭제</button>
			    			<c:if test="${replyList.depth != '1'}">
			    				<button name="reply_reply" reply_id = "${replyList.reply_id}">댓글</button><!-- 첫 댓글에만 댓글이 추가 대댓글 불가 -->
			    			</c:if>
			    		</td>
			    	</tr>
			    </c:forEach>
   			</table>
   			<table border="1" width="1200px" bordercolor="#46AA46">
   				<tr>
   					<td width="500px">
						이름: <input type="text" id="reply_writer" name="reply_writer" style="width:170px;" maxlength="10" placeholder="작성자"/>
						패스워드: <input type="password" id="reply_password" name="reply_password" style="width:170px;" maxlength="10" placeholder="패스워드"/>
						<button id="reply_save" name="reply_save">댓글 등록</button>
					</td>
   				</tr>
   				<tr>
   					<td>
   						<textarea id="reply_content" name="reply_content" rows="4" cols="50" placeholder="댓글을 입력하세요."></textarea>
   					</td>
   				</tr>
   			</table>
   			<table width="1200px">
   				<tr>
   					<td align="right">
   						<button id="list" name="list">게시판</button>
   					</td>
   				</tr>
   			</table>
    	</div>
    	
    	<!--  ./sendReplyTest end -->
          
          
          
          
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Full Name:</label>
                <input type="text" class="form-control" id="userid" value="멤버VO가져와야겠다.">
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
		<!-- chatting and rollingTest div -->
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
            <input id="inputMessage" type="text"/>
            <input type="submit" value="send" onclick="send()" />
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
    <script src = "js/chat/chatpagescript.js"></script>
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