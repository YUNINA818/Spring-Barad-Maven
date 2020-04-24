<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<%@ include file="include/head.jsp"%>

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
		<%@ include file="include/main_header.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->
		<%@ include file="include/left_column.jsp"%>


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

				<!--------------------------
        | Your Page Content Here |
        -------------------------->
				<p>여기가 메인 PAGE이지요.</p>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!-- Main Footer -->
		<%@ include file="include/main_footer.jsp"%>


	</div>


	<!-- ./wrapper -->
	<%@ include file="include/plugin_js.jsp"%>



</body>
</html>