$level = ($args.Count -eq 0)? 1: $args[0];

$path = Get-Location
$levelCount = ($path -split "\\").Count

$isLevelInteger = ($level -is [Int32])
$isLevelInRange = ($level -lt $levelCount)

if (!$isLevelInteger -or !$isLevelInRange -or $args.Count -gt 1) {
    Write-Host "Usage: up <level>`n"
    Write-Host "NOTE: <level> should be a valid level in the hierarchy"
    Exit
}

for ($i = 1; $i -le $level; $i++) {
    Set-Location ..
} 
