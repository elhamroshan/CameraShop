<?xml version="1.0" encoding="UTF-8" ?>
<!-- Example:
<book>
  <id>1</id>   
  <title>Javaprogramming</title>
  <authorname>Fredrik</authorname>
  <authorsurname>Alund</authorsurname> 
  <price>23</price>
  <pages>234</pages>
  <description>Bla bla bla</description>
</book>
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="booklist">
  
  
  <table border="1" color="grey">
    <tr bgcolor="000000">
    <td>
        <font color="FFFFFF">
        <strong>  Product  </strong>
        </font>
    </td>
    <td>
        <font color="FFFFFF">
        <strong>Price</strong>
        </font>
    </td>
    </tr>
        <xsl:apply-templates/>
   </table>
  </xsl:template>
  
  <xsl:template match="book">
    
    <form method="post" action="shop">
    <tr bgcolor="white" >
        <td align="center">
            <font color="99CC00">
            <xsl:value-of select="prod_name"/>
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
                                <![CDATA[shop?action=detail&bookid=]]></xsl:text>
              <xsl:value-of select="id"/>
              </xsl:attribute>
              <xsl:text>Detail</xsl:text>
            </xsl:element>
        </td>
    </tr>
    
    <xsl:element name="input"> <!--A ordinary input in XSLT-->
      <xsl:attribute name="type">hidden</xsl:attribute>
      <xsl:attribute name="value"><xsl:value-of select="id"/></xsl:attribute>
      <xsl:attribute name="name">bookid</xsl:attribute>
    </xsl:element>
    
    <input type="hidden" name="action" value="add"/>
   </form>
  </xsl:template>
  
</xsl:stylesheet>
