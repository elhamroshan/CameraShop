<%@page contentType="text/html" pageEncoding="UTF-8" import="beans.*, tags.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@taglib prefix="camerashop" uri="/camerashop"%>

<c:if test="${sessionScope.currentUser == null}">
  <camerashop:profile url="${jdbcURL}"/>
</c:if>
<c:set var="shoppingcart_xslt">
   <c:import url="shoppingcart_checkout_xslt.xsl"/>
</c:set> 
<x:transform xslt="${shoppingcart_xslt}">
   <checkout>
   <camerashop:shoppingcart/>
   <name>${profile.name}</name>
   <address>${profile.street}</address>
   <zip>${profile.zip}</zip>
   <city>${profile.city}</city>
   </checkout>
</x:transform>




