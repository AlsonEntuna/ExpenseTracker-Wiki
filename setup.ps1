# Sets up a local Python virtual environment with Zensical.
# Usage: .\setup.ps1   (if blocked: powershell -ExecutionPolicy Bypass -File .\setup.ps1)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

# Pick the first Python 3 that actually runs (the "py" launcher or a
# Microsoft Store "python" alias can exist without a real install).
function Test-Python($exe, $pyArgs) {
    if (-not (Get-Command $exe -ErrorAction SilentlyContinue)) { return $false }
    try { & $exe @pyArgs -c "import sys; sys.exit(0 if sys.version_info[0] == 3 else 1)" 2>$null | Out-Null } catch { return $false }
    return $LASTEXITCODE -eq 0
}

if (Test-Python "py" @("-3")) {
    $pyExe = "py"; $pyArgs = @("-3")
} elseif (Test-Python "python" @()) {
    $pyExe = "python"; $pyArgs = @()
} else {
    Write-Host "Python 3 not found. Install it from https://www.python.org/downloads/ and re-run." -ForegroundColor Red
    exit 1
}

if (-not (Test-Path ".venv")) {
    Write-Host "Creating virtual environment in .venv ..."
    & $pyExe @pyArgs -m venv .venv
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

$venvPython = ".\.venv\Scripts\python.exe"
Write-Host "Installing dependencies ..."
& $venvPython -m pip install --upgrade pip
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
& $venvPython -m pip install -r requirements.txt
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host ""
Write-Host "Done. To preview the docs:"
Write-Host "  .\.venv\Scripts\Activate.ps1"
Write-Host "  zensical serve"
