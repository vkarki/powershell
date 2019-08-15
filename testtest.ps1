$childitem = gci -path "C:\users\karkiv\desktop\csv"

foreach($item in $childitem)

{
$item | select-string -pattern "13"

} 
