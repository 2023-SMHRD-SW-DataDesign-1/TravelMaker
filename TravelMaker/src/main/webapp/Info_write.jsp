<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REPLY_BOARD</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
 
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="summernote/summernote.min.css" rel="stylesheet">
 
<script src="js/jquery-3.6.0.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="summernote/summernote.min.js"></script>
 
<link href="css/layout.css" rel="stylesheet">
</head>
<body>
    <div class="formBox">
        <h2>자유게시판</h2>
        <form action="board_write_action.jsp" id="joinForm" method="POST">
            <table>
                <colgroup>
                    <col style="width:150px">
                    <col style="width:850px">
                </colgroup>
                <tbody>
<!--                     <tr> -->
<!--                         <th>ID</th> -->
<!--                         <td><input type="text" name="id" id="userID"></td> -->
<!--                     </tr> -->
                    <tr>
                        <th>NAME</th>
                        <td><input type="text" name="name" id="userName" value=""></td>
                    </tr>
                    <tr>
                        <th>E-MAIL</th>
                        <td><input type="text" name="email" id="userEmail" value=""></td>
                    </tr>
                    <tr>
                        <th>SUBJECT</th>
                        <td><input type="text" name="subject" id="subject" value=""></td>
                    </tr>
                    <tr>
                        <th>PASSWORD</th>
                        <td><input type="password" name="password" id="userPassword"></td>
                    </tr>
                    <tr>
                        <th>CONTENTS</th>
                        <td>
                            <textarea name="contents" id="summernote"></textarea>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="btns">
                <input type="submit" value="확인" id="join">
                <input type="reset" value="취소" id="cancel">
            </div>
        </form>
    </div>
    <script>
        $(document).ready(function() {
          $("#summernote").summernote({
              height:350
          });
        });
    </script>
</body>
</html>
 