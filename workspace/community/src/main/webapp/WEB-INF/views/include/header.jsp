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
    <style>
    .cominside a {
        text-decoration: none;
        color: inherit;
    }
    .cominside a:hover {
        color: inherit;
    }

    /* 반응형 테이블 스타일 */
    .table-primary thead th {
        border-right: 1px solid white;
        font-size: 1rem; /* 글자 크기 조정 */
        word-break: keep-all; /* 단어가 깨지지 않도록 설정 */
    }
    .table-primary thead th:last-child {
        border-right: none;
    }

    /* 작은 화면에서 로그인 폼 조정 */
    @media (max-width: 768px) {
        .log form .row {
            flex-wrap: wrap;
            justify-content: center; /* 가운데 정렬 */
        }
        .log input {
            width: 100%; /* 입력창 가득 차게 */
        }
    }
</style>
</head>
<body>
       <div class="container">
        <div class="log text-center mb-3">
            <form method="post" action="http://www.koroseum.com">
                <div class="row gx-2 gy-2 align-items-center justify-content-center">
                    <div class="col-auto">
                        <a href="/"><img src="${contextPath}/resources/image/코로세움.png" alt="코로세움"></a>
                    </div>
                    <div class="col-auto">
                        <a href="${contextPath}/register/signup" class="text-decoration-none">회원가입</a>
                    </div>
                    <div class="col-auto">
                        <a href="${contextPath}/register/findPw" class="text-decoration-none">비밀번호 찾기</a>
                    </div>
                    <div class="col-auto">
                        <input type="text" class="form-control" id="username" name="userId" placeholder="아이디" required>
                    </div>
                    <div class="col-auto">
                        <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" required>
                    </div>
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary w-100">로그인</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- 테이블 반응형 -->
        <div class="cominside">
            <div class="table-responsive">
                <table class="table table-primary table-hover text-center">
                    <thead>
                        <tr class="text-center">
                            <c:forEach var="category" items="${categoryList}">
                                <th>
                                    <a href="${contextPath}/board/${category.categoryName}">
                                        ${category.categoryDescribe}
                                    </a>
                                </th>
                            </c:forEach>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    <!-- 부트스트랩 JS (선택) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>