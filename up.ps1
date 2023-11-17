$level = ($args.Count -eq 0)? 1: $args[0];

$path = Get-Location
$levelCount = ($path -split "\\").Count

$isInteger = ($level -is [Int32])
$isInRange = ($level -lt $levelCount)

if (!$isInteger -or !$isInRange) {
    Write-Host "Usage: up <valid level>"
    Exit
}

for ($i = 1; $i -le $level; $i++) {
    Set-Location ..
}
