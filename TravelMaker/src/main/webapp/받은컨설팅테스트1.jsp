<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>CodePen - Instagram Profile Layout with CSS Grid &amp;
	Flexbox</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/정보거래_카테고리별.css">
<!--  href="style.css" => 정보거래_카테고리별.css -->

<!-- main head start -->
<meta charset="utf-8">
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

</head>

<body>


	<div class="profile-image">
		<img id="uploadedImage" src="" alt=""> 
		<input type="file" name="profileImage" id="profileImageInput" accept="image/*">
	</div>
	<script>
		const profileImageInput = document.getElementById("profileImageInput");
		const uploadedImage = document.getElementById("uploadedImage");

		profileImageInput.addEventListener("change", function() {
			const file = profileImageInput.files[0];
			const reader = new FileReader();

			reader.addEventListener("load", function() {
				uploadedImage.setAttribute("src", reader.result);
				uploadedImage.style.display = "block";
				profileImageInput.style.display = "none";
			});

			if (file) {
				reader.readAsDataURL(file);
			}
		});
	</script>

</body>

</html>



