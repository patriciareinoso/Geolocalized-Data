<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

	<kml xmlns="http://www.opengis.net/kml/2.2">
		<Document>
			<name>NAME OF THE MAP</name>
			
			<!-- Style definition for paths. Color Green. -->
			<description>DESCRIPTION OF THE MAP</description>
			<Style id="green-line-normal">
		      <LineStyle>
		        <color>ff08a006</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="green-line-highlight">
		      <LineStyle>
		        <color>ff08a006</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="green-line">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#green-line-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#green-line-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for paths. Color Yellow-Green. -->
		    <Style id="green-yellow-normal">
		      <LineStyle>
		        <color>ff05a09d</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="green-yellow-highlight">
		      <LineStyle>
		        <color>ff05a09d</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="green-yellow-line">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#green-yellow-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#green-yellow-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for paths. Color Yellow. -->
		    <Style id="yellow-line-normal">
		      <LineStyle>
		        <color>ff07eef2</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="yellow-line-highlight">
		      <LineStyle>
		        <color>ff07eef2</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="yellow-line">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#yellow-line-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#yellow-line-highlight</styleUrl>
		      </Pair>
		    </StyleMap>
		    <!-- Style definition for paths. Color Orange. -->
		    <Style id="orange-line-normal">
		      <LineStyle>
		        <color>ff0688f1</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="orange-line-highlight">
		      <LineStyle>
		        <color>ff0688f1</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="orange-line">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#orange-line-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#orange-line-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for paths. Color Red. -->
		    <Style id="red-line-normal">
		      <LineStyle>
		        <color>501400F0</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="red-line-highlight">
		      <LineStyle>
		        <color>501400F0</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="red-line">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#red-line-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#red-line-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for pinmarks. Color Yellow. -->
		    <Style id="yellow-icon-normal">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/yellow-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>0</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <Style id="yellow-icon-highlight">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/yellow-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>1</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <StyleMap id="yellow-icon">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#yellow-icon-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#yellow-icon-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for pinmarks. Color Orange. -->
		    <Style id="orange-icon-normal">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/orange-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>0</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <Style id="orange-icon-highlight">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/orange-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>1</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <StyleMap id="orange-icon">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#orange-icon-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#orange-icon-highlight</styleUrl>
		      </Pair>
		    </StyleMap>

		    <!-- Style definition for pinmarks. Color Red. -->
		    <Style id="red-icon-normal">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/red-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>0</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <Style id="red-icon-highlight">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/red-icon.png</href>
		        </Icon>
		        <hotSpot x="16" xunits="pixels" y="32" yunits="insetPixels"/>
		      </IconStyle>
		      <LabelStyle>
		        <scale>1</scale>
		      </LabelStyle>
		      <BalloonStyle>
		        <text><![CDATA[<h3>$[name]</h3>]]></text>
		      </BalloonStyle>
		    </Style>
		    <StyleMap id="red-icon">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#red-icon-normal</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#red-icon-highlight</styleUrl>
		      </Pair>
		    </StyleMap>
    		<Folder>
    			<xsl:apply-templates select="EVENT_RAW/PATHS/PATH"/>
    			<xsl:apply-templates select="EVENT_RAW/POTHOLES/POTHOLE"/>
			</Folder>
		</Document>
	</kml>

</xsl:template>


<!-- Template for pavement quality events (type 1). -->
<xsl:template match="EVENT_RAW/PATHS/PATH">
	<Placemark>
	    <name>Path</name>
	    <description>
			Quality:
			<xsl:value-of select="QUALITY"/>
	    </description>
      	<xsl:if test="QUALITY &lt; 8">
          <styleUrl>#red-line</styleUrl>
      	</xsl:if>
	    <xsl:if test="QUALITY &gt; 8 and QUALITY &lt; 9">
          <styleUrl>#orange-line</styleUrl>
      	</xsl:if>
      	<xsl:if test="QUALITY &gt; 9 and QUALITY &lt; 9.5">
          <styleUrl>#yellow-line</styleUrl>
      	</xsl:if>
	    <xsl:if test="QUALITY &gt; 9.5 and QUALITY &lt; 10">
          <styleUrl>#green-yellow-line</styleUrl>
      	</xsl:if>
      	<xsl:if test="QUALITY &gt; 10">
          <styleUrl>#green-line</styleUrl>
      	</xsl:if>
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

<!-- Template for potholes events (type 2). -->
<xsl:template match="EVENT_RAW/POTHOLES/POTHOLE">
	<Placemark>
		<name>PothHole</name>
		<description>
			Intensity:
			<xsl:value-of select="INTENSITY"/>
		</description>
		<xsl:if test="INTENSITY &lt; 1.5">
          <styleUrl>#yellow-icon</styleUrl>
      	</xsl:if>
	    <xsl:if test="INTENSITY &gt; 1.5 and INTENSITY &lt; 3.5">
          <styleUrl>#orange-icon</styleUrl>
      	</xsl:if>
      	<xsl:if test="INTENSITY &gt; 3.5">
          <styleUrl>#red-icon</styleUrl>
      	</xsl:if>
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