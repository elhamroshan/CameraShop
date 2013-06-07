<%@page contentType="text/html" pageEncoding="UTF-8" import="beans.*, tags.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@taglib prefix="camerashop" uri="/camerashop"%>


<jsp:useBean id="product" class="beans.ProductBean" scope="request">
    Error, the bean should have been created in the servlet!
</jsp:useBean>


<c:set var="productdetail_xslt">
   <c:import url="productdetail_xslt.xsl"/>
</c:set> 

<x:transform xslt="${productdetail_xslt}">
    <detailpage>
      <jsp:getProperty name="product" property="xml"/>
    </detailpage>
</x:transform>


