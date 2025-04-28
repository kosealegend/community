<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../include/header.jsp" flush="false"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 메시지 출력 -->
<c:if test="${not empty msg}">
    <div class="alert alert-warning">
        ${msg}
    </div>
</c:if>

<div class="container" style="max-width: 500px; margin: 0 auto; padding-top: 50px;">
    <form id="findForm" action="${contextPath}/register/findPw" method="post">
        <div class="form-group">
            <input type="text" name="userId" placeholder="아이디" class="form-control">
        </div>
        <div class="form-group">
            <input type="text" name="nickname" placeholder="닉네임" class="form-control">
        </div>
		<button type="submit" onclick="findPasswordSubmit(); return false;" class="btn btn-primary">비밀번호 찾기</button>
    </form>
</div>

<jsp:include page="../include/footer.jsp" flush="false"/>

<script>
    // submit 버튼 클릭시 form 전송
    function findPasswordSubmit() {
        document.getElementById('findPasswordForm').submit();
    }
</script>
