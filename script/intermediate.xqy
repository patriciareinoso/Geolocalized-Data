xquery version "1.0";
declare namespace math="http://www.w3.org/2005/xpath-functions/math";

<EVENT_RAW>
<PATHS>
{
for $x in doc("../data/sample-data.xml")/SSD/EVENT_RAW
let $average := avg (
		for $ac in $x/ACCELERATION_LIST/ACCELERATION
		return math:sqrt( math:pow($ac/X,2) + math:pow($ac/Y,2) + math:pow($ac/Z,2))
)
where $x/type = 1
return
	<PATH>
			<LOCATION>{$x/POSITION_LIST/POSITION}</LOCATION>
			<QUALITY>{$average}</QUALITY>
	</PATH>
}
</PATHS>
<POTHOLES>
{
for $x in doc("../data/sample-data.xml")/SSD/EVENT_RAW
let $max := max (
		for $ac in $x/ACCELERATION_LIST/ACCELERATION
		return abs(math:sqrt( math:pow($ac/X,2) + math:pow($ac/Y,2) + math:pow($ac/Z,2)) - 9.8)
)
where $x/type = 2
return
	<POTHOLE>
			<LOCATION>{$x/POSITION_LIST/POSITION}</LOCATION>
			<INTENSITY>{$max}</INTENSITY>
	</POTHOLE>
}
</POTHOLES>
</EVENT_RAW>