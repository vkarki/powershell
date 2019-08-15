$array =@(11,12,13,14,15)
$reversearray=@(0,0,0,0,0)
$length= $array.length
$a=$length-1
$j=0
$i=$a

for($i=$a;$i -gt -1; $i--)
{
$reversearray[$j] = $array[$i]
$reversearray[$j]
$j++
}