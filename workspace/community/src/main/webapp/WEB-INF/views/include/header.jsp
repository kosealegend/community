<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div class="container">
    <div class="log text-center mb-3">
        <c:choose>
            <c:when test="${empty sessionScope.member}">
                <!-- 로그인 폼 -->
                <form method="post" action="${contextPath}/register/signin">
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
                            <input type="text" class="form-control" name="userId" placeholder="아이디" required>
                        </div>
                        <div class="col-auto">
                            <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
                        </div>
                        <div class="col-auto">
                           <button type="submit" class="btn btn-primary w-100">로그인</button>
                        </div>
                    </div>
                    <!-- 로그인 실패 메시지 -->
                    <c:if test="${not empty msg}">
                        <div class="text-danger mt-2">${msg}</div>
                    </c:if>
                </form>
            </c:when>
            <c:otherwise>
                <!-- 로그인 상태 표시 -->
                <div class="row gx-2 gy-2 align-items-center justify-content-center">
                    <div class="col-auto">
                        <a href="/"><img src="${contextPath}/resources/image/코로세움.png" alt="코로세움"></a>
                    </div>
                    <div class="col-auto">
                        <span>${sessionScope.member.nickname}님 환영합니다!</span>
                    </div>
                    <div class="col-auto">
                        <a href="${contextPath}/register/signout" class="btn btn-danger">로그아웃</a>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
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