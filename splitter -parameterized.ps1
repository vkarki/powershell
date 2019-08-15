[cmdletbinding()]
param(
   [Parameter(Mandatory=$True)]
   $Filetosplit , $Rowsperfile
)

$Inputfile = Import-Csv -Path "$Filetosplit"
$totalcount = $Inputfile.Count
$j=0
$m=0
$k=$rowsperfile

while($j -lt $totalcount)
{
$i=$j
for($i=$j; $i -lt $k ; $i++)
{
$Inputfile[$i] | Export-Csv -Path C:\Users\karkiv\Desktop\"splitter$m".csv -NoTypeInformation -Append -Force
}
$j=$j+$rowsperfile
$k=$k+$rowsperfile
$m++
}