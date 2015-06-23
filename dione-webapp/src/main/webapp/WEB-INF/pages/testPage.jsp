<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<script src="${pageContext.request.contextPath}/js/d3.v3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/d3.tip.v0.6.3.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dione.css" />
</head>
<body>

	<h1>Wow! I am Dione Controller, I am working & able to find this
		JSP!!!</h1>

	<h2>Check JS</h2>
	<h3>You have to refer me as &lt;script
		src="$&#123;pageContext.request.contextPath&#125;/js/d3.tip.v0.6.3.js"
		&gt;&lt;/script&gt; in your JSP</h3>
	<ul>
		<li><a href="${pageContext.request.contextPath}/js/d3.v3.min.js">$&#123;pageContext.request.contextPath&#125;/js/d3.v3.min.js</a></li>
		<li><a
			href="${pageContext.request.contextPath}/js/d3.tip.v0.6.3.js">$&#123;pageContext.request.contextPath&#125;/js/d3.tip.v0.6.3.js</a></li>
		<li><a href="${pageContext.request.contextPath}/js/dione.js">$&#123;pageContext.request.contextPath&#125;/js/dione.js</a></li>
	</ul>


	<h2>Check CSS</h2>
	<h3>This page is displaying like this because of me</h3>
	<ul>
		<li><a
			href="${pageContext.request.contextPath}/css/dione.bar.css">$&#123;pageContext.request.contextPath&#125;/css/dione.bar.css</a></li>
		<li><a
			href="${pageContext.request.contextPath}/css/dione.group.bar.css">$&#123;pageContext.request.contextPath&#125;/css/dione.group.bar.css</a></li>
	</ul>
	<h3>From DB</h3>
	<table border="1">
		<tr><th>ID</th><th>Merchant</th><th>Description</th></tr>
	<c:forEach var="txn" items="${txns}">
		<tr>
			<td>${txn.id}</td>
			<td>${txn.merchant}</td>
			<td>${txn.description}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>


