<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

	<kml xmlns="http://www.opengis.net/kml/2.2">
		<Document>
			<name>NAME OF THE MAP</name>
			<description>DESCRIPTION OF THE MAP</description>
			<Style id="line-normal1">
		      <LineStyle>
		        <color>ff08a006</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="line-highlight1">
		      <LineStyle>
		        <color>ff08a006</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="line1">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#line-normal1</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#line-highlight1</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="line-normal2">
		      <LineStyle>
		        <color>ff05a09d</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="line-highlight2">
		      <LineStyle>
		        <color>ff05a09d</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="line2">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#line-normal2</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#line-highlight2</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="line-normal3">
		      <LineStyle>
		        <color>ff07eef2</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="line-highlight3">
		      <LineStyle>
		        <color>ff07eef2</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="line3">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#line-normal3</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#line-highlight3</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="line-normal4">
		      <LineStyle>
		        <color>ff0688f1</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="line-highlight4">
		      <LineStyle>
		        <color>ff0688f1</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="line4">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#line-normal4</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#line-highlight4</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="line-normal5">
		      <LineStyle>
		        <color>ffd18802</color>
		        <width>4.5</width>
		      </LineStyle>
		    </Style>
		    <Style id="line-highlight5">
		      <LineStyle>
		        <color>ffd18802</color>
		        <width>7.0215</width>
		      </LineStyle>
		    </Style>
		    <StyleMap id="line5">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#line-normal5</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#line-highlight5</styleUrl>
		      </Pair>
		    </StyleMap>

		    <Style id="icon-normal1">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-2.png</href>
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
		    <Style id="icon-highlight1">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-2.png</href>
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
		    <StyleMap id="icon1">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#icon-normal1</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#icon-highlight1</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="icon-normal2">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-3.png</href>
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
		    <Style id="icon-highlight2">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-3.png</href>
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
		    <StyleMap id="icon2">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#icon-normal2</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#icon-highlight2</styleUrl>
		      </Pair>
		    </StyleMap>
		    <Style id="icon-normal3">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-1.png</href>
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
		    <Style id="icon-highlight3">
		      <IconStyle>
		        <color>ffd18802</color>
		        <scale>1</scale>
		        <Icon>
		          <href>https://sites.google.com/site/kmlfilestsp/kml/icon-1.png</href>
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
		    <StyleMap id="icon3">
		      <Pair>
		        <key>normal</key>
		        <styleUrl>#icon-normal3</styleUrl>
		      </Pair>
		      <Pair>
		        <key>highlight</key>
		        <styleUrl>#icon-highlight3</styleUrl>
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
      	<xsl:if test="QUALITY &lt; 8">
          <styleUrl>#line5</styleUrl>
      	</xsl:if>
	    <xsl:if test="QUALITY &gt; 8 and QUALITY &lt; 9">
          <styleUrl>#line4</styleUrl>
      	</xsl:if>
      	<xsl:if test="QUALITY &gt; 9 and QUALITY &lt; 9.5">
          <styleUrl>#line3</styleUrl>
      	</xsl:if>
	    <xsl:if test="QUALITY &gt; 9.5 and QUALITY &lt; 10">
          <styleUrl>#line2</styleUrl>
      	</xsl:if>
      	<xsl:if test="QUALITY &gt; 10">
          <styleUrl>#line1</styleUrl>
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

<xsl:template match="EVENT_RAW/POTHOLES/POTHOLE">
	<Placemark>
		<name>PothHole</name>
		<description>
			Intensity:
			<xsl:value-of select="INTENSITY"/>
		</description>
		<xsl:if test="INTENSITY &lt; 1.5">
          <styleUrl>#icon1</styleUrl>
      	</xsl:if>
	    <xsl:if test="INTENSITY &gt; 1.5 and INTENSITY &lt; 3.5">
          <styleUrl>#icon2</styleUrl>
      	</xsl:if>
      	<xsl:if test="INTENSITY &gt; 3.5">
          <styleUrl>#icon3</styleUrl>
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