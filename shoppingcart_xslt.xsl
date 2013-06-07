<?xml version="1.0" encoding="UTF-8" ?>
<!-- Exempel:
<product>
  <id>1</id>   
  <name>High Pro Tele Zoom Canon</name>
  <price>23</price>
  <description>Bla bla bla</description>
</product>
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="shoppingcart">
  <br /> <br />
  <table border="1" cellspacing="0" color="999999">
    <tr bgcolor="000000">
    <td colspan="4">
        <font color="FFFFFF">
        <strong>Shoppingcart</strong>
        </font>
    </td>
    <tr bgcolor="AFCACA">
      <td>Name</td>
      <td>Quantity</td>
      <td colspan="2">Remove</td>
    </tr>
    </tr>
        <xsl:apply-templates/>
      <tr>
      <td colspan="4" align="right" style="padding-right: 10px;">
        <a href="shop?action=checkout">Checkout</a>
      </td>
    </tr>
   </table>
  </xsl:template>
  <xsl:template match="order">
  <form method="post" action="shop">
       <tr bgcolor="white" >
        <td align="left" style="padding-right: 10px;">
            <font color="99CC00">
            <xsl:value-of select="product/name"/>
            </font>
        </td>
        <td align="right">
            <xsl:value-of select="quantity"/>
        </td>

        <td>
            <xsl:element name="input"> <!--A ordinary input in XSLT-->
              <xsl:attribute name="size">2</xsl:attribute>
              <xsl:attribute name="type">text</xsl:attribute>
              <xsl:attribute name="value">1</xsl:attribute>
              <xsl:attribute name="name">quantity</xsl:attribute>
            </xsl:element>        
        </td>
        <td>
            <input type="submit" value="Remove"/>
        </td>
    
      <xsl:element name="input"> <!--A ordinary input in XSLT-->
        <xsl:attribute name="type">hidden</xsl:attribute>
        <xsl:attribute name="value"><xsl:value-of select="product/id"/></xsl:attribute>
        <xsl:attribute name="name">productid</xsl:attribute>
      </xsl:element>
      <xsl:element name="input"> <!--A ordinary input in XSLT-->
        <xsl:attribute name="type">hidden</xsl:attribute>
        <xsl:attribute name="value">remove</xsl:attribute>
        <xsl:attribute name="name">action</xsl:attribute>
      </xsl:element>

    </tr>
    </form>
  </xsl:template>

  
</xsl:stylesheet>
