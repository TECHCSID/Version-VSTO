$version = Get-ChildItem HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall | foreach-object {Get-ItemProperty $_.PsPath} | ? { $_.displayname -match 'GenApi.iNot.Outlook' } 
write-output $version.DisplayVersion
