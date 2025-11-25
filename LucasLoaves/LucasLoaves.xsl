<?xml version = "1.0" encoding = "UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
--> 
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
<!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell processor to process the entire document with this template. 
--> 
   <xsl:template match="/"> 
      <!-- HTML tags 
         Used for formatting purpose. Processor will skip them and browser 
            will simply render them. 
      --> 
      
      <html> 
         <head>
                <style>
					html, body {
					height: 100%;
					margin: 0;
					padding: 0;
					font-family: Arial, sans-serif; /* Improved font family */
					}

					body {
					background-image: url('background/bakery.gif');
					background-repeat: no-repeat;
					background-size: cover;
					color: #333; /* Darker text color for better readability */
					}

					.center {
					text-align: center;
					padding: 20px; /* Add some padding to the container */
					}

					h1 {
					font-size: 3em; /* Larger font size for the header */
					color: hsla(335, 76%, 43%, 0.71); /* White text color for contrast */
					margin: 0 auto 20px auto; /* Margin at the bottom to space from the table */
					padding: 20px;
					border-radius: 10px; /* Rounded corners for the header background */
					width: 800px;

					}

					table {
					line-height: 1.5;
					display: inline-block;
					vertical-align: middle;
					border-collapse: separate;
					border-spacing: 0;
					margin: 0 auto; /* Center the table horizontally */
					border: 2px solid #ccc; /* Softer border color and thickness */
					border-radius: 8px; /* Rounded corners */
					background-color: rgba(249, 249, 249, 0.8); /* Light background color with slight transparency */
					}

					th, td {
					padding: 12px 15px; /* Adjusted padding for more space */
					border: 1px solid #ddd; /* Softer border color for table cells */
					font-size: 16px; /* Increased font size for better readability */
					font-weight: bold;
					}

					th {
					background-color: #986487ff; /* Header background color */
					color: #fff; /* White text color for contrast */
					font-weight: bold; /* Bold font for header */
					}

					tr: td {
					background-color: #f2f2f2; /* Alternating row background color */
					}

					tr:hover td {
					background-color: #e0e0e0; /* Highlight background color on hover */
					}

				</style>
            
         </head>
         <body>
            <div class="center div1">
               <h1>Luca's Loaves</h1> 
            
               <table border = "1"> 
                  <tr bgcolor = "#640f64ff"> 
                     <th>Menu Item</th> 
                     <th>Description</th> 
                     <th>Price</th> 
                     <th>Image</th> 
                  </tr> 
               
                  <!-- for-each processing instruction 
                  Looks for each element matching the XPath expression 
                  --> 
               
                  <xsl:for-each select="Lucas_Loaves/Menu"> 
                     <tr>
                        <td><xsl:value-of select = "Item_Name"/></td> 
                        <td><xsl:value-of select = "Description"/></td> 
                        <td><xsl:value-of select = "Price"/></td>
                        <td>
                           <xsl:element name="img">
                              <xsl:attribute name="src">
                                 <xsl:value-of select="Image"/>
                              </xsl:attribute>
                              <xsl:attribute name="width">
                                 150px
                              </xsl:attribute>
                              <xsl:attribute name="height">
                                 auto
                              </xsl:attribute>
                           </xsl:element>
                        </td>
                     </tr> 
                  </xsl:for-each> 
                  
               </table> 
            </div>
            <div>
				
					<audio center="true" controls="true" loop="true">
					<source src="/BryansCafe/audio/cafe.mp4" type="audio/mpeg" />
                </audio>
            </div>
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>
