<%@page import="model.RatingDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/Mypage.css">

<!-- main head start -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="../favicon.png">
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
<!-- main head end -->


<!-- =style 임시= -->
<style>
.container2 {
	background: #fff;
	padding: 24px;
	border-radius: 13px;
	position: relative;
	margin: 0 12px;
	box-shadow: 0 10px 16px 0 #cde4dd;
	left: 40px;
}

.container3 {
	background: #fff;
	padding: 24px;
	border-radius: 13px;
	position: relative;
	margin: 0 12px;
	box-shadow: 0 10px 16px 0 #cde4dd;
	left: 20px;
}

strong {
	font-size: large;
}

/* btn 테스트 */
.test_btn1 {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	margin-right: -2px;
}

.test_btn2 {
	margin-left: -4px;
}

.test_btn3 {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-left: -6px;
}

.btn_group button {
	/* #5882FA; */
	border: 1px solid #5882FA;
	background-color: rgba(0, 0, 0, 0);
	color: #5882FA;
	padding: 4px;
}

.btn_group button:hover {
	color: white;
	background-color: #5882FA;
}

/* 모달 css start */
#popupBtn {
	font-weight: bold;
	border: none;
}

#modalWrap {
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	display: none;
}

#modalBody {
	width: 400px;
	height: 400px;
	padding: 30px 30px;
	margin: 0 auto;
	border: 1px solid #777;
	background-color: #fff;
}

#closeBtn {
	float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;
}

.div_modal {
	width: 200px;
	height: 100px;
	font-size: 20px;
	position: relative;
	height: auto;
}

.modal_btn {
	height: 50px;
	width: 100px;
	position: absolute;
	bottom: 0px;
	top: 230px;
	left: 220px;
}

#input_cash {
	width: 150px;
}
</style>
</head>

<body>

	<!-- 초반 스크립트릿 -->
	<%
	UserDTO info = (UserDTO) session.getAttribute("info");
	String user_id = info.getUser_id();
	String act_area = info.getAct_area();
	String uploadSuccess = request.getParameter("upload_success");
	String deleteSuccess = request.getParameter("delete_success");
	DecimalFormat df = new DecimalFormat("###,###");
	RatingDAO radao = new RatingDAO();
	%>


	<!-- 사진 업로드 성공 시 -->
	<%
	if (uploadSuccess != null && uploadSuccess.equals("true")) {
	%>
	<script>
		alert("업로드 완료");
	</script>
	<%
	}
	%>

	<!-- 사진 삭제 성공 시 -->
	<%
	if (deleteSuccess != null && deleteSuccess.equals("true")) {
	%>
	<script>
		alert("삭제 완료");
	</script>
	<%
	}
	%>
	
		<script>
		const btn = document.getElementById('popupBtn');
		const modal = document.getElementById('modalWrap');
		const closeBtn = document.getElementById('closeBtn');

		btn.onclick = function() {
			modal.style.display = 'block';
		}
		closeBtn.onclick = function() {
			modal.style.display = 'none';
		}

		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		
		
	// 프사 업로드 스크립트
	const profileImageInput = document.getElementById("profileImageInput");
	const uploadedImage = document.getElementById("uploadedImage");
	const uploadButton = document.getElementById("uploadButton");
							
	// 업로드 버튼을 비활성화하는 함수
 	function disableUploadButton() {
	uploadButton.disabled = true;
	uploadButton.style.backgroundColor = "gray"; // 비활성화 시 배경색을 회색으로 설정
	}
	// 업로드 버튼을 활성화하는 함수
	function enableUploadButton() {
	uploadButton.disabled = false;
	uploadButton.style.backgroundColor = "#5882FA"; // 활성화 시 배경색을 파란색으로 설정
	}
	profileImageInput.addEventListener("change",function() {
		const file = profileImageInput.files[0];
		const reader = new FileReader();
		// 사용자가 파일을 선택한 후에 "업로드하기" 버튼을 활성화합니다
		enableUploadButton();
		reader.addEventListener("load",function() {
			uploadedImage.setAttribute("src",reader.result);
			uploadedImage.style.display = "block";
			profileImageInput.style.display = "none";
			});
		if (file) {
			reader.readAsDataURL(file);
			}
		});
	disableUploadButton()
	
	
	// 모달 스크립트
	// "직접입력" 라디오 버튼과 숨겨진 입력 필드에 대한 참조를 가져옵니다.
	const customInputRadio = document.getElementById("customInputRadio");
	const customInput = document.getElementById("customInput");
	function showCustomInput() {
		customInput.style.display = "block";
		}
	function hideCustomInput() {
		customInput.style.display = "none";
		}
	function sendChargeValue() {
		var chargeValue;
		// 직접입력 라디오 버튼이 선택되었는지 확인
		if (customInputRadio.checked) {
			// 직접입력 값 입력 공간에서 값을 가져오기
			chargeValue = customInput.value;
			} else {
				// 선택된 라디오 버튼의 값을 가져오기
				var selectedRadio = document
				.querySelector('input[name="charge"]:checked');
				chargeValue = selectedRadio.value;
				}
		// 1000으로 나눈 나머지가 0인지 확인
		if (chargeValue % 1000 !== 0) {
			alert("1000단위로 입력해주세요.");
			} else {
				// Paytest 페이지로 값을 전달하기
				window.location.href = "Paytest.jsp?charge=" + chargeValue;
			}
		}
	
	
	$(function(){
		//직접입력 인풋박스 기존에는 숨어있다가
		$("#selboxDirect").hide();
		$("#selbox").change(function() {
		//직접입력을 누를 때 나타남
		if ($("#selbox").val() == "direct") {
			$("#selboxDirect").show();
		} else {
			$("#selboxDirect").hide();
		}
	})
	});

	<!-- 버튼 스크립트 -->
	document.addEventListener('DOMContentLoaded', function() {
		// "구매하기" 버튼을 ID로 찾아서 변수에 할당합니다.
		const purchaseButton = document.getElementById('portfolio-button');

		// "구매하기" 버튼에 클릭 이벤트 리스너를 추가합니다.
		purchaseButton.addEventListener('click', function() {
			// 버튼 클릭 시 "InfoBuyCon.do"로 리다이렉트합니다.
			window.location.href = 'portfolio_list.jsp?user_id=<%=user_id%>';
			});
		});
		
		
	<!-- 프로필 사진 삭제 스크립트 -->
	const deleteProfileBtn = document.getElementById('deleteProfileBtn');
	const confirmModal = document.getElementById('confirmModal');
	const confirmYesBtn = document.getElementById('confirmYesBtn');
	const confirmNoBtn = document.getElementById('confirmNoBtn');

	// 삭제 버튼 클릭 시 모달 창 보이기
	deleteProfileBtn.addEventListener('click',function() {
						confirmModal.style.display = 'block';
					});

	function handleProfilePicDeletion(result) {
		if (result.success) {
			alert("프로필 사진이 삭제되었습니다.");
			location.reload(); // 페이지 새로고침
		} else {
			alert("프로필 사진 삭제에 실패했습니다.");
		}
	}

	// 모달 창에서 "예" 버튼 클릭 시 프로필 사진 삭제 실행
	confirmYesBtn.addEventListener('click',function() {
		// 폼 요소를 가져옵니다.
		const deleteProfileForm = document.getElementById('deleteProfileForm');
		// DeletepicCon.do로 폼을 제출합니다.
		deleteProfileForm.submit();
		// 모달 창 닫기
		confirmModal.style.display = 'none';
					});

	// 모달 창에서 "아니오" 버튼 클릭 시 모달 창 닫기
	confirmNoBtn.addEventListener('click', function() {
						confirmModal.style.display = 'none';
	});
	</script>
	




	<div class="untree_co-section">
		<div class="container">



			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h1 class="section-title text-center">마이페이지</h1>
				</div>
			</div>

			<div class="container3">
				<header>

					<div class="container">

						<!-- 사용자 프로필 사진이 있을 경우에만 사진을 보여줍니다 -->
						<%
						if (info.getUser_pic() != null && !info.getUser_pic().isEmpty()) {
						%>
						<button id="deleteProfileBtn" class="button_test">프로필 사진 삭제</button>
						<!-- 삭제 여부 확인-->
						<div id="confirmModal" style="display: none;">
							<div id="confirmModalContent">
								<span>정말 삭제하시겠습니까?</span>
								<form action="DeletepicCon.do" id="deleteProfileForm" method="post">
									<input type="hidden" name="user_id" value="<%=user_id%>">
								</form>
								<div id="confirmBtnWrap">
									<button id="confirmYesBtn" class="button_test">예 /</button>
									<button id="confirmNoBtn" class="button_test">아니오</button>
								</div>
							</div>
						</div>

						<div class="profile">

							<!-- 프로필 사진 부분 -->
							<div class="profile-image">

								<img class="profile_test" src="img/<%=info.getUser_pic()%>"
									alt="Profile Picture">
							</div>
							<%
							} else {
							%>
							<!-- 프사 없을 경우 업로드기능 -->
							<div class="profile">
								<div class="profile-image">
									<div class="upload_test">
										
										<!-- 폼태그 시작!!!!!!!!! -->
										<form action="UploadpicCon.do" method="post" enctype="multipart/form-data">
											<input type="file" name="profileImage" id="profileImageInput" accept="image/*"> 
											<img id="uploadedImage" src="" alt=""> <input type="hidden" name="user_id" value="<%=user_id%>" class="button_test"> 
											<input type="submit" value="프로필사진 업로드하기" class="button_test2" id="uploadButton">
										</form>
									</div>
								</div>
								<%
								}
								%>

								<div class="profile-user-settings">

									<h1 class="profile-user-name"><%=info.getUser_name()%></h1>
									<span>현재금액 : <%=df.format(info.getUser_cash())%>원</span>
									<button id="popupBtn">충전하기</button>
									<button class="btn profile-settings-btn" aria-label="profile settings"> <i class="fas fa-cog" aria-hidden="true"></i></button>
									<div id="btnWrap">
									
									
										<!-- 폼태그 시작 -->
										<form action="Paytest.jsp">
										<!-- 모달창 -->
										<div id="modalWrap">
											<div id="modalBody">
												<span id="closeBtn">&times;</span>
												<!-- 모달창안 -->
													<div class="div_modal">
													<h1>Add cash💵</h1><br>
														<p><input type="radio" name="charge" value="5000" onclick="hideCustomInput()"> 5000원</p>
														<p><input type="radio" name="charge" value="10000" onclick="hideCustomInput()"> 10000원</p>
														<p><input type="radio" name="charge" value="30000" onclick="hideCustomInput()"> 30000원</p>
														<p><input type="radio" name="charge" value="50000" onclick="hideCustomInput()"> 50000원</p>
														<input type="radio" name="charge" id="customInputRadio" onclick="showCustomInput()"> 직접입력
														<!-- 숨겨진 직접입력 값 입력 공간 -->
														<input type="number" id="customInput" style="display: none;">
														<!-- 값을 보내는 버튼 -->
														<div class="modal_btn">
															<input type="button" value="선택완료" onclick="sendChargeValue()" class="cash_input">
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>

								<div class="profile-bio">
								고수면 활동지역 나오게
								<p><span class="profile-real-name">활동지역 : 어디</span></p>
								<p>
									별점나올부분
								</p>
								</div>
								<button class="portfoilo-move-button" id="portfolio-button">포트폴리오</button>
							</div>
						</div>
						</div>
					</header>

				<!-- 나의 정보거래 내역 시작 -->
				<main>
					<div class="container2">
						<strong> 나의 정보거래 내역</strong>
						<p>
							<b>[전체]</b> 총 3건
						</p>
						<div class="btn_group">
							<button class="test_btn1">전체</button>
							<button class="test_btn2">판매내역</button>
							<button class="test_btn3">구매내역</button>
						</div>
						<div class="gallery">
							<div class="gallery-item" tabindex="0">
								이미지 들어올곳
								<div class="gallery-item-info">자세히보기</div>
							</div>
							<div class="loader"></div>
						</div>
					</div>
				</main>
				<!-- 나의 정보거래 내역 끝 -->
			</div>

		</div>
	</div>


	<!-- partial -->
	<script src="js/script.js"></script>

	<!-- main script start -->
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
	<!-- main script end -->

	<!-- modal script start -->



</body>

</html>