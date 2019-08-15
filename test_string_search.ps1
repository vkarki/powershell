$path= Read-Host "Enter the path"
$search= Read-Host "enter the string you want to search"

get-content -path $path  | select-string -pattern "vishal"