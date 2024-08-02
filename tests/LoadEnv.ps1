$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$envFilePath = Join-Path $scriptDir ".env"

if (Test-Path $envFilePath) {
    Get-Content $envFilePath | ForEach-Object {
        if ($_ -match "^\s*([^#;]+?)\s*=\s*(.+)\s*$") {
            $name = $matches[1]
            $value = $matches[2]
            [System.Environment]::SetEnvironmentVariable($name, $value)
        }
    }
    Write-Host "[INFO] Loaded .env file from $envFilePath"
}
