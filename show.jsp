<%@page contentType="text/html" pageEncoding="UTF-8" import="beans.*, tags.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@taglib prefix="camerashop" uri="/camerashop"%>

<html>
<head><title>CameraShop::Shop</title></head>
<body style="margin:0;padding:0;color: #061C37;background:url(images/bg.png);
	background-repeat:repeat-x;">
<h1 style="font-family: Vladimir Script;font-size:24pt;">
    Camera Shop "Catch the moment"
</h1>
<jsp:useBean id="productList" class="beans.ProductListBean" scope="application">
    Error, the bean should have been created in the servlet!
</jsp:useBean>


<c:set var="productlist_xslt">
   <c:import url="productlist_xslt.xsl"/>
</c:set> 

<x:transform xslt="${productlist_xslt}">
    <jsp:getProperty name="productList" property="xml"/>
</x:transform>



<c:set var="shoppingcart_xslt">
   <c:import url="shoppingcart_xslt.xsl"/>
</c:set> 
<x:transform xslt="${shoppingcart_xslt}">
   <camerashop:shoppingcart/>
</x:transform>
    
<br>

<c:if test="${sessionScope.currentUser != null}">
  <form action=shop?action=profile method=post>
    <input type="submit" value="Update Profile">
  </form>

  <form action=shop?action=logout method=post>
    <input type="submit" value="Logout">
  </form>
</c:if>
</body>
</html>
