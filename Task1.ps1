param([string]$fileName)
if (-not (Test-Path $FileName)) {
	Write-Host "Error: File not found."
	exit
}
$FileSize = (Get-Item $FileName).Length
$limit = 1048576
if ($fileSize -gt $limit) {
	Write-Host "Warning: File is too large."
} else {
	Write-Host "File size is within limits"
}
