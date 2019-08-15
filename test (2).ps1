function getevenorodd
{
[int]$number = Read-Host "Enter a number"

if($number % 2 -eq 0)
{
"$number is even"
}
else
{
"$number is odd"
}
}

function getprime
{
$number = Read-Host "Enter a number"
$flag=0
for($i=2; $i -le $number/2; $i++)
    {
        if($number%$i -eq 0)
        {
            $flag=1
            break
        }
    }

    if ($flag -eq 0)
        {
"$number Number is prime"
         }
  else
{
 "$number Number is not prime"
}
    
}




Write-Host "Type PRIME to find a prime number or EO to find a even odd number" -backgroundcolor black -foregroundcolor white
$a=Read-Host

if ($a -match "EO")
{
getevenorodd
}

else
{
getprime
}