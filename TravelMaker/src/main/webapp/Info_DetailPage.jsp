<%@page import="model.HisDTO"%>
<%@page import="model.UserDTO"%>
<%@page import="model.InfoDTO"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="model.InfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/daterangepicker.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style.css">

    <title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>
    
    <!-- like css -->
    <link rel="stylesheet" href="css/like_button.css">

</head>

<style>
.untree_co-section{
	margin-top: 94px;
}
.owl-item > img{
	width: 100% !important;
}
.col-lg-4{
	margin-right: 8rem;
}
.bought-bottn{
	display: flex;
	justify-content: flex-right;
}
</style>

<body>

	<!-- 네비게이션 시작 -->
	<jsp:include page="Nav.jsp"></jsp:include>
	<!-- 네비게이션 끝 -->

	<%
	int info_num = Integer.parseInt(request.getParameter("info_num"));
	UserDTO info = (UserDTO) session.getAttribute("info");
	InfoDAO idao = new InfoDAO();
	String user_id = info.getUser_id();
	HisDTO show_his = idao.searchHis(new InfoDTO(user_id, info_num));
	
	
	InfoDTO info_list = idao.showInfoSelect(info_num);
	String info_title = info_list.getInfo_title();
	String info_brief = info_list.getInfo_brief();
	int info_fee = info_list.getInfo_fee();
	String infouser_id = info_list.getUser_id();
	
	System.out.println(info_num);
	
	
	int buy = idao.countBuy(info_num);	
	
	
	String notification = (String) session.getAttribute("notification");
	System.out.println("노티피 : " + notification);
	%>

	<!-- 알림 메시지가 존재할 경우 해당 알림을 표시 -->
	
	<script>
	<% if (notification != null) { %>
		alert("<%=notification%>");
		<%
		// 알림 메시지를 띄운 후에, notification 세션을 제거합니다.
		session.removeAttribute("notification");
		%>
	<% } %>
	</script>
    <!-- img start -->
    <!-- 이미지 알고리즘 -->
    
    	<%
    	
    	InfoDTO idto = idao.showInfoSelect(info_num);    	
    	
    	String htmlString = idto.getInfo_content();

    	// 정규 표현식 패턴
    	String pattern = "<img\\s+[^>]*>";

    	// 정보에 해당하는 img 태그들을 저장할 변수
    	StringBuilder imgTags = new StringBuilder();
    	
    	// 정규 표현식에 매칭되는 부분을 찾기 위한 Matcher 객체 생성
    	Matcher matcher = Pattern.compile(pattern).matcher(htmlString);

    	// 모든 img 태그 찾아서 imgTags에 추가하기
    	while (matcher.find()) {
    	    imgTags.append(matcher.group());
    	}
		%>
    
    
    
    <div class="untree_co-section">
        <div class="container my-5">
            <div class="mb-5">
                <div class="owl-single dots-absolute owl-carousel">
                
                <%=imgTags%>
                </div>
            </div>
            <!-- img end -->

            <!-- 제목 start -->
            <div class="row justify-content-center">

                <div class="col-lg-4">
                    <div class="custom-block" data-aos="fade-up">
                        <h2 class="section-title"><%=info_title %></h2>
                        <div class="custom-accordion" id="accordion_1">
                            <div class="accordion-item">
                                <h2 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        간단한 설명</button>
                                </h2>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                                    data-parent="#accordion_1">
                                    <div class="accordion-body">
                                        <%=info_brief %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 제목 end -->


                    <!-- 가격 시작 -->
                </div>
                <div class="col-lg-4">
                    <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
                      
                       
                            <div class="row">
                                <div class="col-md-6">


                                    <div class="form-group">
                                        <label class="text-black" for="fname">작성자 : <%=infouser_id %></label>
                                        <label class="text-black" for="fname">글번호 : <%=info_num%></label>
                                        <!-- <input type="text" class="form-control" id="fname"> -->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                    	보유금액 : <%=info.getUser_cash()%>
                                        <label class="text-black" for="lname">💵<%=info_fee %>캐시</label>
                                        <!-- <input type="text" class="form-control" id="lname"> -->
                                    </div>
                                </div>
                            </div>
                            <!-- 가격 끝 -->

                            <div class="container2">
                                <!-- like 시작 -->
                                <span class="like__number">구매횟수 : <%=buy %></span>
                                <!-- like 끝 -->
                                <!-- 구매버튼 시작 -->
                               <div class="bought-bottn">
	                               <form class="bought_margin" action="InfoBuyCon.do?user_id=<%=info.getUser_id()%>&info_fee=<%=info_fee%>&user_cash=<%=info.getUser_cash()%>&info_num=<%=info_num%>" method="post">
	                               	<input type="submit" value="구매하기">
	                               </form>
	                               
	                               <%boolean hasShowHis = show_his != null;%>
	                               <button id="purchaseButton" <% if (hasShowHis) { %>class="blue-button"<% } else { %>class="gray-button" disabled<% } %>>
	    							상세정보 보러가기
									</button>
                               </div>
                               <!-- 버튼 스크립트 -->
								<script>
								    document.addEventListener('DOMContentLoaded', function() {
								        const purchaseButton = document.getElementById('purchaseButton');
								
								        <% if (hasShowHis) { %>
								        purchaseButton.addEventListener('click', function() {
								            window.location.href = '정보거래구매후테스트본.jsp?info_num=<%=info_num%>';
								        });
								        <% } else { %>
								        purchaseButton.addEventListener('click', function() {
								            alert('구매해주세요');
								        });
								        <% } %>
								    });
								</script>
	
                              
                                
        
      
                            </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


	
	<!-- 푸터 시작 -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->

    <div id="overlayer">
    </div>
    <div class="loader">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- main 하단 end -->

    <!-- like script start -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <!-- like script start -->

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/daterangepicker.js"></script>

    <script src="js/typed.js"></script>

    <script src="js/custom.js"></script>



</body>

</html>