<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>커뮤니티 메인</title>
    <!-- 부트스트랩 CDN -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${contextPath}/resources/css/board.css" />
    <style>
      .card-header-custom {
        background-color: #000 !important;
        color: white;
        padding: 0.5rem 1rem; /* 상하 여백 최소화 */
        border-bottom: 2px solid #dee2e6; /* 아래 선 */
      }

      .post-list-box {
        min-height: 240px; /* 예: 글 6개 분량 공간 확보 */
      }
    </style>
  </head>
  <body>
    <div class="board-container mt-4">
      <div class="row">
        <!-- 카테고리 반복 -->
        <c:forEach var="category" items="${categoryList}">
          <div class="col-md-6 mb-4">
            <div class="card h-100">
              <div class="card-header">
                <a
                  href="${contextPath}/board/${category.categoryName}"
                  class="text-black text-decoration-none"
                >
                  ${category.categoryDescribe} 게시판
                </a>
              </div>
              <ul class="list-group list-group-flush post-list-box">
                <%-- 여기에 글 6개 출력 예정 --%>
              </ul>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>

    <!-- 부트스트랩 JS (선택) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
