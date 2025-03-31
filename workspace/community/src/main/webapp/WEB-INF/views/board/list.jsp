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
    <link rel="stylesheet" href="${contextPath}/resources/css/board.css" />
    <style>
      .post-list-area {
        min-height: 800px; /* 글 20개 기준 여유있게 */
      }
    </style>
  </head>
  <body>
  	<jsp:include page="../include/header.jsp" />
    <section class="board-container mt-4">
      <!-- 제목 / Header -->
      
	      <div class="d-flex justify-content-between align-items-center mb-3">
	        <h2>게시판 제목</h2>
	        <c:if test="${not empty sessionScope.member}">
		        <a href="${contextPath}/board/write?categoryName=${categoryName}" class="btn btn-primary">글쓰기</a>
			</c:if>
	      </div>
      <!-- 테이블 or 리스트 -->
      <div class="table-responsive post-list-area">
        <table class="table table-striped">
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th>
              <th>추천</th>
            </tr>
          </thead>
          <tbody>
            <!-- 게시글 목록 반복 영역 -->
            <tr>
              <td>1</td>
              <td><a href="#">예시 게시글 제목</a></td>
              <td>홍길동</td>
              <td>2025-03-26</td>
              <td>123</td>
              <td>1</td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- 목록 버튼 + 페이징 한 줄 정렬 -->
      <div
        class="d-flex justify-content-between align-items-center flex-wrap mt-4"
      >
        <!-- 왼쪽 목록 버튼 -->
        <div>
          <button class="btn btn-secondary">목록</button>
        </div>

        <!-- 가운데 정렬된 페이징 -->
        <div class="mx-auto">
          <nav class="paginate">
            <ul class="pagination mb-0">
              <li class="page-item disabled">
                <a class="page-link" href="#">이전</a>
              </li>
              <li class="page-item active">
                <a class="page-link" href="#">1</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">다음</a></li>
            </ul>
          </nav>
        </div>
      </div>

      <!-- 검색 폼 -->
      <div class="post-search-wrap mt-3">
        <form
          class="d-flex justify-content-center"
          method="get"
          action="search.do"
        >
          <input
            class="form-control w-25 me-2"
            type="search"
            name="keyword"
            placeholder="검색어 입력"
            aria-label="Search"
          />
          <button class="btn btn-outline-success" type="submit">검색</button>
        </form>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
