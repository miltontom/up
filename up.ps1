$limit = ($args.Count -eq 0)? 1: $args[0];

$path = Get-Location
$levelCount = ($path -split "\\").Count

$isInteger = ($limit -is [Int32])
$isInRange = ($limit -lt $levelCount)

if (!$isInteger -or !$isInRange) {
    Write-Host "Usage: up <valid level>"
    Exit
}

for ($i = 1; $i -le $limit; $i++) {
    # Go back one level in the hierarchy (cd ..)
    Set-Location ..
}
