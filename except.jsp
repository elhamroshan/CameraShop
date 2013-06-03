<%@page contentType="text/html" isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head><title>Errorpage</title></head>
<body>

<c:if test="${sessionScope.debug == null}">
I am very sorry but an Exception has occurred: ${pageContext.exception.message}
</c:if>

<c:if test="${sessionScope.debug != null}">
${pageContext.exception.traceback}
</c:if>

<p>
Go to the <a href="shop">shop</a>



</body>
</html>
