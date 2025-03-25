<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <title>${categoryName} 게시판</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <style>
      .post-list-area {
        min-height: 800px; /* 글 20개 기준 여유있게 */
      }
    </style>
  </head>
  <body>
    <div class="container mt-4">
      <div class="d-flex justify-content-between align-items-center mb-3">
        <h3 class="mb-0">${categoryName} 게시판</h3>

        <!-- ✅ 로그인한 사용자만 글쓰기 버튼 표시 -->
        <c:if test="${not empty sessionScope.loginUser}">
          <a
            href="${contextPath}/board/write?category=${categoryId}"
            class="btn btn-dark"
            >글쓰기</a
          >
        </c:if>
      </div>

      <!-- ✅ 게시글 목록 테이블 -->
      <table class="table table-hover table-bordered post-list-area">
        <thead class="table-light">
          <tr>
            <th style="width: 10%">번호</th>
            <th>제목</th>
            <th style="width: 15%">작성자</th>
            <th style="width: 15%">작성일</th>
            <th style="width: 10%">조회수</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="post" items="${postList}">
            <tr>
              <td>${post.id}</td>
              <td>
                <a
                  href="${contextPath}/board/detail?id=${post.id}"
                  class="text-decoration-none"
                >
                  ${post.title}
                </a>
              </td>
              <td>${post.writer}</td>
              <td>${post.createdDate}</td>
              <td>${post.viewCount}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

      <!-- ✅ 페이징 처리 -->
      <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center">
          <c:forEach begin="1" end="${totalPages}" var="i">
            <li class="page-item ${i == currentPage ? 'active' : ''}">
              <a
                class="page-link"
                href="${contextPath}/board/${categoryName}?page=${i}"
              >
                ${i}
              </a>
            </li>
          </c:forEach>
        </ul>
      </nav>

      <!-- ✅ 검색창 -->
      <form
        class="d-flex justify-content-center mb-4"
        method="get"
        action="${contextPath}/board/${categoryName}"
      >
        <input type="hidden" name="category" value="${categoryId}" />
        <input
          class="form-control w-25 me-2"
          type="search"
          name="keyword"
          placeholder="검색어 입력"
        />
        <button class="btn btn-outline-secondary" type="submit">검색</button>
      </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
