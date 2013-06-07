/*
 * ProductBean.java
 *
 */
package beans;

public class ProductBean {

    // describe a product
    
    private int id;
    private String name;
    private int price; // Needs to be calculated as a sum of all the component prices
    private String description;
    
    
    /** Creates a new instance of ProductBean */
    public ProductBean() {
    }
    
    public int getPrice() {
        return price;
    }
    
    public void setPrice(int _price) {
        price = _price;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String _name) {
        name=_name;
    }

    public int getId() {
        return id;
    }
    
    public void setId( int _id) {
        id= _id;
        
    }

    public void setDescription(String _description) {
        description=_description;
    }

    public String getDescription() {
        return description;
    }

    // create an XML document describing the book
    
    public String getXml() {

	// use a Stringbuffer (not String) to avoid multiple
	// object creation

     StringBuffer xmlOut = new StringBuffer();
      
      xmlOut.append("<product>");
      xmlOut.append("<id>");
      xmlOut.append(id);
      xmlOut.append("</id>");      
      xmlOut.append("<name><![CDATA[");
      xmlOut.append(name);
      xmlOut.append("]]></name>");
      xmlOut.append("<price>");
      xmlOut.append(price);      
      xmlOut.append("</price>");
      xmlOut.append("<description><![CDATA[");
      xmlOut.append(description);      
      xmlOut.append("]]></description>");   
      xmlOut.append("</product>");
      
      return xmlOut.toString();
    
        
    }   
}
