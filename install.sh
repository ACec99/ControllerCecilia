#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if ! command -v docker &> /dev/null; then
  echo "Docker was not found. Please install Docker Desktop first:"
  echo "  https://www.docker.com/products/docker-desktop/"
  exit 1
fi

if [ ! -f .env ]; then
  cp .env.example .env
  echo "Created .env from .env.example"
fi

docker compose -f docker-compose.tutorial.yml up
