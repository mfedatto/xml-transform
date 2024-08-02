$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

Set-Location -Path $scriptDir

.\LoadEnv.ps1

Write-Host "$($env:visualstudio_msbuild_path)"
