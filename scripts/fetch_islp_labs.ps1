param(
    [string]$Version = "v2.2.3",
    [string]$OutDir = "notebooks\official"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$Target = Join-Path $RepoRoot $OutDir
$TempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("islp_labs_" + [System.Guid]::NewGuid().ToString("N"))
$ZipPath = Join-Path $TempRoot "islp_labs.zip"
$Url = "https://github.com/intro-stat-learning/ISLP_labs/archive/refs/tags/$Version.zip"

New-Item -ItemType Directory -Force -Path $Target | Out-Null
New-Item -ItemType Directory -Force -Path $TempRoot | Out-Null

try {
    Write-Host "Downloading ISLP_labs $Version..."
    Invoke-WebRequest -Uri $Url -OutFile $ZipPath -UseBasicParsing

    Write-Host "Extracting..."
    Expand-Archive -LiteralPath $ZipPath -DestinationPath $TempRoot -Force
    $Extracted = Get-ChildItem -LiteralPath $TempRoot -Directory | Where-Object { $_.Name -like "ISLP_labs-*" } | Select-Object -First 1
    if (-not $Extracted) {
        throw "Could not find extracted ISLP_labs directory."
    }

    $Patterns = @(
        "Ch*.ipynb",
        "Auto.csv",
        "Auto.data",
        "requirements.txt",
        "LICENSE",
        "imagenet_class_index.json",
        "setup_notebook_env.py"
    )

    foreach ($Pattern in $Patterns) {
        Get-ChildItem -LiteralPath $Extracted.FullName -Filter $Pattern -File | ForEach-Object {
            Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $Target $_.Name) -Force
        }
    }

    Write-Host "ISLP labs downloaded to: $Target"
    Write-Host "Open notebooks from notebooks\official after starting Jupyter Lab."
}
finally {
    if (Test-Path -LiteralPath $TempRoot) {
        Remove-Item -LiteralPath $TempRoot -Recurse -Force
    }
}

