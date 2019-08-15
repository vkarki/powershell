[cmdletbinding()]
param(
   [Parameter(Mandatory=$True)]
   $Filetosplit , $exportname, $Rowsperfile , $exportlocation
)

$Inputfile = Import-Csv -Path "$Filetosplit"
$totalcount = $Inputfile.Count
$j=0
$m=1
$k=$rowsperfile

while($j -lt $totalcount)
{
$i=$j
for($i=$j; $i -lt $k ; $i++)
{
$Inputfile[$i] | Export-Csv -Path "$exportlocation\$exportname$m.csv" -NoTypeInformation -Append
}
$j=$j+$rowsperfile
$k=$k+$rowsperfile
$m++
}