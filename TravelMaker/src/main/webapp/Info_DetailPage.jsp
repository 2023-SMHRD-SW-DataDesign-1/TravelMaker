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
    <link rel="shortcut icon" href="favicon.png">

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap4" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/daterangepicker.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style.css">

    <title>Tour Free Bootstrap Template for Travel Agency by Untree.co</title>
    
    <!-- like css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
    <link rel="stylesheet" href="css/좋아요버튼.css">


</head>

<body>


	<%
	int info_num = Integer.parseInt(request.getParameter("info_num"));
	String info_title = request.getParameter("info_title");
	String info_brief = request.getParameter("info_brief");
	int info_fee = Integer.parseInt(request.getParameter("info_fee"));
	String infouser_id = request.getParameter("infouser_id");
	System.out.println(info_num);
	
	UserDTO info = (UserDTO) session.getAttribute("info");
	
	InfoDAO idao = new InfoDAO();
	
	int buy = idao.countBuy(info_num);
			
	
	
	%>

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
                   <!--  <img src="img/slider-1.jpg" alt="Free HTML Template by Untree.co" class="img-fluid">
                    <img src="img/slider-2.jpg" alt="Free HTML Template by Untree.co" class="img-fluid">
                    <img src="img/slider-4.jpg" alt="Free HTML Template by Untree.co" class="img-fluid"> -->
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

<!--                             <div class="accordion-item">
                                <h2 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                        data-target="#collapseTwo" aria-expanded="false"
                                        aria-controls="collapseTwo">상세설명</button>
                                </h2>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                                    data-parent="#accordion_1">
                                    <div class="accordion-body">
                                        설명작성
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                        data-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">위치</button>
                                </h2>

                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                    data-parent="#accordion_1">
                                    <div class="accordion-body">
                                        내용
                                    </div>
                                    <div class="form-group">
                                        <label class="text-black" for="password">댓글 달기</label>
                                        <input type="text" class="form-control" id="password">
                                    </div>
                                </div>

                            </div> -->
                        </div>
                    </div>
                    <!-- 제목 end -->


                    <!-- 가격 시작 -->
                </div>
                <div class="col-lg-4">
                    <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
                      
                        <form class="contact-form bg-white">
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
                                        <label class="text-black" for="lname">💵<%=info_fee %>캐시</label>
                                        <!-- <input type="text" class="form-control" id="lname"> -->
                                    </div>
                                </div>
                            </div>
                            <!-- 가격 끝 -->

                            <br>
                            <div class="container2">
                                <!-- like 시작 -->
                                <button class="like__btn2 animated">
                                    <i class="like__icon2 fa fa-heart"></i>
                                    
                                    <span class="like__number">구매횟수 : <%=buy %></span>
                                </button>
                                <!-- like 끝 -->
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <!-- 구매버튼 시작 -->
                               

                                <button id="purchaseButton" class="btn btn-primary">구매하기</button>
                                
                                <!-- 구매버튼 스크립트 -->
                                <script>
								  document.addEventListener('DOMContentLoaded', function() {
								    // "구매하기" 버튼을 변수
								    const purchaseButton = document.getElementById('purchaseButton');
								
								    // "구매하기" 버튼에 클릭 이벤트 리스너
								    purchaseButton.addEventListener('click', function() {
								    // 버튼 클릭 시 "InfoBuyCon.do"
								    window.location.href = 'InfoBuyCon.do?user_id=<%=info.getUser_id()%>&user_cash=<%=info.getUser_cash()%>&info_fee=<%=info_fee%>';
								    });
								  });
								</script>
                                
                                <!-- 구매버튼 끝-->
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- main 하단 start -->
    <div class="site-footer">
        <div class="inner first">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="widget">
                            <h3 class="heading">About Tour</h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                                there live the
                                blind texts.</p>
                        </div>
                        <div class="widget">
                            <ul class="list-unstyled social">
                                <li><a href="#"><span class="icon-twitter"></span></a></li>
                                <li><a href="#"><span class="icon-instagram"></span></a></li>
                                <li><a href="#"><span class="icon-facebook"></span></a></li>
                                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                                <li><a href="#"><span class="icon-apple"></span></a></li>
                                <li><a href="#"><span class="icon-google"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-2 pl-lg-5">
                        <div class="widget">
                            <h3 class="heading">Pages</h3>
                            <ul class="links list-unstyled">
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-2">
                        <div class="widget">
                            <h3 class="heading">Resources</h3>
                            <ul class="links list-unstyled">
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="widget">
                            <h3 class="heading">Contact</h3>
                            <ul class="list-unstyled quick-info links">
                                <li class="email"><a href="#">mail@example.com</a></li>
                                <li class="phone"><a href="#">+1 222 212 3819</a></li>
                                <li class="address"><a href="#">43 Raymouth Rd. Baltemoer, London 3910</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="inner dark">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-8 mb-3 mb-md-0 mx-auto">
                        <p>Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash;
                            Designed with
                            love by <a href="https://untree.co" class="link-highlight">Untree.co</a>
                            <!-- License information: https://untree.co/license/ -->Distributed By <a
                                href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="overlayer"></div>
    <div class="loader">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- main 하단 end -->

    <!-- like script start -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/좋아요버튼.js"></script>
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