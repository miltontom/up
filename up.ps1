function Set-MaxLimit($levelCount, $limit, $argCount) {
    if ($argCount -eq 0) {
        return 1
    }

    if ($limit -ge $levelCount) {
        return $levelCount - 1
    }

    return $limit
}

if ($args.Count -gt 0 -and $args[0] -lt 0 ) {
    Write-Host "Usage: up <limit>"
    Write-Host "`nOptions:"
    Write-Host "`tlimit - Positive integer"
    Exit
}

$limit = $args[0]
$argCount = $args.Count
$path = Get-Location
$levelCount = ($path -split "\\").Count
$maxLimit = Set-MaxLimit $levelCount $limit $argCount

for ($i = 1; $i -le $maxLimit; $i++) {
    # Go back one level in the hierarchy
    Set-Location ..
}
