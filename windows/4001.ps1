$minlen_output = net accounts | Select-String "Minimum password length"

if (-not $minlen_output) {
    Write-Output "Minimum password length is not configured or less than 15."
    exit 1
}

$minlen_value = ($minlen_output -split ':')[1].Trim()

if ([int]$minlen_value -lt 15) {
    Write-Output "Minimum password length is not configured or less than 15."
    exit 1
}

Write-Output "Minimum password length = 15 or greater is configured."
exit 0
