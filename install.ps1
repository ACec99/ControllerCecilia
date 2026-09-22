Set-Location -Path $PSScriptRoot

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Docker was not found. Please install Docker Desktop first:"
    Write-Host "  https://www.docker.com/products/docker-desktop/"
    exit 1
}

if (-not (Test-Path ".env")) {
    Copy-Item ".env.example" ".env"
    Write-Host "Created .env from .env.example"
}

docker compose -f docker-compose.tutorial.yml up
