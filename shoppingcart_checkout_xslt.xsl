<?xml version="1.0" encoding="UTF-8" ?>
<!-- Example:
<product>
  <id>1</id>   
  <name>Beginners Canon</name>
  <price>23</price>
  <description>Bla bla bla</description>
</product>
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="checkout">
    <html>
    <head><title>CameraShop::Checkout</title></head>
    <body>
  <table border="0" cellspacing="0">
    <tr bgcolor="silver">
    <td colspan="4">
        <strong>Shoppingcart</strong>
    </td>
    <tr bgcolor="silver">
      <td>Name</td>
      <td>Quantity</td>
      <td colspan="2">Remove</td>
    </tr>
    </tr>
        <xsl:apply-templates select="shoppingcart/order"/>
   </table>
    <table border="0">
      <form action="shop" method="post">
        <input type="hidden" name="action" value="save" />
        <tr>
          <td>Name:</td>
          <td><input>
              <xsl:attribute name="type">text</xsl:attribute>
              <xsl:attribute name="name">shipping_name</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
          </input></td>
        </tr>
       <tr>
          <td>Address:</td>
          <td><input>
             <xsl:attribute name="type">text</xsl:attribute> 
             <xsl:attribute name="name">shipping_address</xsl:attribute>
             <xsl:attribute name="value"><xsl:value-of select="address"/></xsl:attribute>
          </input></td>
        </tr>
        <tr>
          <td>Zip code:</td>
          <td><input>
              <xsl:attribute name="type">text</xsl:attribute>
              <xsl:attribute name="name">shipping_zipcode</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="zip"/></xsl:attribute>
          </input></td>
        </tr>
        <tr>
          <td>City:</td>
          <td><input>
             <xsl:attribute name="type">text</xsl:attribute>
             <xsl:attribute name="name">shipping_city</xsl:attribute>
             <xsl:attribute name="value"><xsl:value-of select="city"/></xsl:attribute>
          </input></td>
        </tr> 
        <tr>
        <td colspan="2"><input type="submit" value="Buy" /></td>
        </tr>
      </form>
    </table>
    </body>
    </html>
  </xsl:template>
  <xsl:template match="shoppingcart/order">
    <tr>
        <td>
            <xsl:value-of select="product/name"/>
        </td>
        <td align="right">
            <xsl:value-of select="quantity"/>
        </td>
    </tr>
  </xsl:template>

  
</xsl:stylesheet>
