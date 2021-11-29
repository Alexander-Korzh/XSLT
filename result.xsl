<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  
  
  <xsl:template match ="/">

    <Result>
      
      <DocumentInfo NumberOfItems = "count(Table/Item)"> 
        <Total>
          <xsl:value-of select="Table/Total" />
        </Total>
        
        <RealTotal>
          <xsl:value-of select="sum(//Item/Subtotal)"/>
        </RealTotal>
          
        <IsEqual>
          <xsl:value-of select="Total = RealTotal"/>
        </IsEqual>
          
        <DifferentTypes>
          <xsl:for-each select="Table/Item">
            <Type>
              <xsl:value-of select="Type"/>
            </Type>
          </xsl:for-each>
        </DifferentTypes>
      
      </DocumentInfo>
    
    </Result>

  </xsl:template>
</xsl:stylesheet>