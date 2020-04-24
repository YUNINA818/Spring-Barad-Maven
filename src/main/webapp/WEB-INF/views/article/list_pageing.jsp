<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<link rel="stylesheet"
	href="/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->

<link rel="stylesheet"
	href="/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->

<link rel="stylesheet"
	href="/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->

<link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->

<link rel="stylesheet" href="/dist/css/skins/skin-blue.min.css">

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<style>
.fileDrop {
	width: 100%;
	height: 200px;
	border: 2px dotted #0b58a2;
}
</style>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<%@ include file="../include/main_header.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->
		<%@ include file="../include/left_column.jsp"%>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					페이지 윗부분을 담당합니다. <small>윗부분 디자인을 예쁘게 만들어주세요. 아앙 매일이 셋업이다.
						지겹다.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${path}/"><i class="fa fa-dashboard"></i>
							home</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">
				<div class="col-lg-12">
					<div class="box box-primary">
						<div class="box-header with-border">
							<h3 class="box-title">게시글 목록</h3>
						</div>
						<div class="box-body">

							<div class="box-footer">
								<div class="text-center">
									<ul class="pagination">
										<c:if test="${pageMaker.prev}">
											<li><a
												href="${path}/article/listPaging?page=${pageMaker.startPage - 1}">이전</a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage}"
											end="${pageMaker.endPage}" var="idx">
											<li
												<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
												<a href="${path}/article/listPaging?page=${idx}">${idx}</a>
											</li>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a
												href="${path}/article/listPaging?page=${pageMaker.endPage + 1}">다음</a></li>
										</c:if>
									</ul>
								</div>
							</div>


							<table class="table table-bordered">
								<tbody>
									<tr>
										<th style="width: 30px">#</th>
										<th>제목</th>
										<th style="width: 100px">작성자</th>
										<th style="width: 150px">작성시간</th>
										<th style="width: 60px">조회</th>
									</tr>
									<c:forEach items="${articles}" var="article">
										<tr>
											<td>${article.articleNo}</td>
											<td><a
												href="${path}/article/read?articleNo=${article.articleNo}">${article.title}</a></td>
											<td>${article.writer}</td>
											<td><fmt:formatDate value="${article.regDate}"
													pattern="yyyy-MM-dd a HH:mm" /></td>
											<td><span class="badge bg-red">${article.viewCnt}</span></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="box-footer">
							<div class="pull-right">
								<button type="button" class="btn btn-success btn-flat"
									id="writeBtn">
									<i class="fa fa-pencil"></i> 글쓰기
								</button>
							</div>
						</div>
					</div>
				</div>

				<!--------------------------
        | Your Page Content Here |
        -------------------------->
				<p>여기가 메인 PAGE이지요.</p>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!-- Main Footer -->
		<%@ include file="../include/main_footer.jsp"%>


	</div>


	<!-- ./wrapper -->
	<%@ include file="../include/plugin_js.jsp"%>



</body>
</html>