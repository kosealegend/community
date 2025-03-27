<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>코로세움</title>
</head>
<body>
    <div class="container">
        <!-- 로그인 폼 -->
         <div class="lego text-center mb-4">
      
            <a href="/" >
                <img src="/image/코로세움.png" alt="코로세움">
            </a>
        </div>
        
        <div class="log text-center mb-3">
           
            <form method="post" action="http://www.koroseum.com">
                <div class="row g-1 align-items-center justify-content-center">
                    <!-- 회원가입 링크 -->
                    <div class="col-12 col-md-2">
                        <a href="${contextPath}/register/signup" class="text-decoration-none">회원가입</a>
                    </div>
                    <!-- 비밀번호 찾기 링크 -->
                    <div class="col-12 col-md-2">
                        <a href="${contextPath}/register/findPw" class="text-decoration-none">비밀번호 찾기</a>
                    </div>
                    <!-- 아이디 입력 -->
                    <div class="col-12 col-md-2">
                        <input type="text" class="form-control" id="username" name="userId" placeholder="아이디" required>
                    </div>
                    <!-- 비밀번호 입력 -->
                    <div class="col-12 col-md-2">
                        <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" required>
                    </div>
                    <!-- 로그인 버튼 -->
                    <div class="col-12 col-md-2">
                        <button type="submit" class="btn btn-primary w-100">로그인</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- 로고 -->
       
        <!-- 게시판 목록 -->
        <div class="cominside">
            <ul class="list-unstyled d-flex justify-content-center gap-3">
                <li><a href="${contextPath}"><span>게시판1</span></a></li>
                <li><a href="${contextPath}"><span>게시판2</span></a></li>
                <li><a href="${contextPath}"><span>게시판3</span></a></li>
                <li><a href="${contextPath}"><span>게시판4</span></a></li>
                <li><a href="${contextPath}"><span>게시판5</span></a></li>
                <li><a href="${contextPath}"><span>게시판6</span></a></li>
            </ul>
        </div>
    </div>

    <!-- 부트스트랩 JS (선택) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>