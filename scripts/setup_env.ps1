param(
    [switch]$Full
)

$ErrorActionPreference = "Stop"

$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$VenvPath = Join-Path $RepoRoot ".venv"
$Requirements = if ($Full) {
    Join-Path $RepoRoot "environment\requirements.txt"
} else {
    Join-Path $RepoRoot "environment\requirements-lite.txt"
}

if (-not (Test-Path -LiteralPath $VenvPath)) {
    python -m venv $VenvPath
}

$Python = Join-Path $VenvPath "Scripts\python.exe"

& $Python -m pip install --upgrade pip
& $Python -m pip install -r $Requirements
& $Python -m ipykernel install --user --name "ml-statistical-foundations-2026" --display-name "ML Statistical Foundations 2026"

Write-Host "Environment ready."
Write-Host "Activate with: .\.venv\Scripts\activate"
Write-Host "Start Jupyter with: jupyter lab"

