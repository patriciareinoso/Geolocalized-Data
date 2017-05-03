<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

	<kml xmlns="http://www.opengis.net/kml/2.2">
		<Document>
			<name>NAME OF THE MAP</name>
			<description>DESCRIPTION OF THE MAP</description>
			<StyleMap id="line-A52714-4">
      			<Pair>
       				<key>normal</key>
        			<styleUrl>#line-A52714-4-normal</styleUrl>
      			</Pair>
			    <Pair>
			        <key>highlight</key>
			        <styleUrl>#line-A52714-4-highlight</styleUrl>
			     </Pair>
    		</StyleMap>
    		<Folder>
    			<xsl:apply-templates select="SSD/EVENT_RAW[type='1']"/>
    			<xsl:apply-templates select="SSD/EVENT_RAW[type='2']"/>
			</Folder>
		</Document>
	</kml>

</xsl:template>

<xsl:template match="SSD/EVENT_RAW[type='1']">
	<Placemark>
	    <name>LINE1</name>
	    <description>FIRST LINE CREATED</description>
	    <styleUrl>#line-A52714-4</styleUrl>
	    <LineString>
   			<tessellate>1</tessellate>
   			<coordinates>
   				<xsl:for-each select="POSITION_LIST/POSITION">
   					<xsl:value-of select="longtitude"/>,
					<xsl:value-of select="latitude"/>,
					0
   				</xsl:for-each>
    		</coordinates>
			</LineString>
	</Placemark>
</xsl:template>

<xsl:template match="SSD/EVENT_RAW[type='2']">
	<Placemark>
		<name>X</name>
		<description>Y</description>
		<Point>
			<coordinates>
				<xsl:value-of select="POSITION_LIST/POSITION/longtitude"/>,
				<xsl:value-of select="POSITION_LIST/POSITION/latitude"/>,
				0
			</coordinates>
		</Point>
	</Placemark>
</xsl:template>

</xsl:stylesheet>