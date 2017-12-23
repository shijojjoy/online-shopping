<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap Theme -->
<%-- <link href="${css}/bootstrapreadabletheme.css" rel="stylesheet"> --%>

<!-- Custom styles for this template -->
<link href="${css}/my-app.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!-- Navigation -->

		<jsp:include page="shared/navbar.jsp"></jsp:include>

		<div class="content">
			<!-- Page Content -->
			<!-- Loading home page -->
			<c:if test="${userClickHome == true }">
				<jsp:include page="home.jsp" />
			</c:if>

			<!-- Loading About Us Page -->
			<c:if test="${userClicAbout == true }">
				<jsp:include page="about.jsp" />
			</c:if>

			<!-- Loading Contact Us Page -->
			<c:if test="${userClicContact == true }">
				<jsp:include page="contact.jsp" />
			</c:if>
		</div>
		<!-- Footer -->

		<jsp:include page="shared/footer.jsp" />
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<!-- Self Coded Js -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
