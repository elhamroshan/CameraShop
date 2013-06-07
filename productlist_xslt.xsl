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

  <xsl:template match="productlist">
  
  
  <table border="1" color="grey"  cellspacing="0"  style="padding-right: 5px; padding-left: 5px">
    <tr bgcolor="000000" cellspacing="0" border="0">
    <td  style="padding-right: 10px; padding-left: 5px" >
        <font color="FFFFFF">
        <strong>Product</strong>
        </font>
    </td>
    <td  style="padding-right: 10px; padding-left: 5px">
        <font color="FFFFFF" >
        <strong>Price</strong>
        </font>
    </td>
    </tr>
        <xsl:apply-templates/>
   </table>
  </xsl:template>
  
  <xsl:template match="product">
    
    <form method="post" action="shop">
    <tr bgcolor="white" >
        <td align="left" style="padding-right: 10px; padding-left: 5px">
            <font color="99CC00">
            <xsl:value-of select="name"/>
            </font>
        </td>
        <td align="center">
            <font color="99CC00">
            <xsl:value-of select="price"/>
            </font>
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
            <input type="submit" value="BUY"/>
            <xsl:element name="a"> <!-- A link in XSLT -->
              <xsl:attribute name="href"><xsl:text disable-output-escaping="yes">
                                <![CDATA[shop?action=detail&productid=]]></xsl:text>
              <xsl:value-of select="id"/>
              </xsl:attribute>
              <xsl:text>Detail</xsl:text>
            </xsl:element>
        </td>
    </tr>
    
    <xsl:element name="input"> <!--A ordinary input in XSLT-->
      <xsl:attribute name="type">hidden</xsl:attribute>
      <xsl:attribute name="value"><xsl:value-of select="id"/></xsl:attribute>
      <xsl:attribute name="name">productid</xsl:attribute>
    </xsl:element>
    
    <input type="hidden" name="action" value="add"/>
   </form>
  </xsl:template>
  
</xsl:stylesheet>
