<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

	<kml xmlns="http://www.opengis.net/kml/2.2">
		<Document>
			<Style id="orangeStyle">
		      <IconStyle>
		        <color>00000000</color>
		        <Icon>
		                <href>http://maps.google.com/mapfiles/kml/pushpin/ylw-pushpin.png</href>
		        </Icon>
		      </IconStyle>
		    </Style> 
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
    			<xsl:apply-templates select="EVENT_RAW/PATHS/PATH"/>
    			<xsl:apply-templates select="EVENT_RAW/POTHOLES/POTHOLE"/>
			</Folder>
		</Document>
	</kml>

</xsl:template>

<xsl:template match="EVENT_RAW/PATHS/PATH">
	<Placemark>
	    <name>Path</name>
	    <description>
			Quality:
			<xsl:value-of select="QUALITY"/>
	    </description>
	    <styleUrl>#line-A52714-4</styleUrl>
	    <LineString>
   			<tessellate>1</tessellate>
   			<coordinates>
   				<xsl:for-each select="LOCATION/POSITION">
   					<xsl:value-of select="longtitude"/>,
					<xsl:value-of select="latitude"/>,
					0
   				</xsl:for-each>
    		</coordinates>
		</LineString>
	</Placemark>
</xsl:template>

<xsl:template match="EVENT_RAW/POTHOLES/POTHOLE">
	<Placemark>
		<name>PothHole</name>
		<description>
			Intensity:
			<xsl:value-of select="INTENSITY"/>
		</description>
		<styleUrl>#orangeStyle</styleUrl> 
		<Point>
			<coordinates>
				<xsl:value-of select="LOCATION/POSITION/longtitude"/>,
				<xsl:value-of select="LOCATION/POSITION/latitude"/>,
				0
			</coordinates>
		</Point>
	</Placemark>
</xsl:template>

</xsl:stylesheet>