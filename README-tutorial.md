# Running the controller tutorial

## Prerequisites (one-time, before the tutorial)

- **Windows**: install [Docker Desktop](https://www.docker.com/products/docker-desktop/) with the **WSL2** backend enabled, and virtualization enabled in your BIOS/UEFI (usually on by default).
- **macOS**: install Docker Desktop (Apple Silicon build if you have an M1/M2/M3/M4 Mac).
- **Linux**: Docker Engine + the Compose plugin, with your user in the `docker` group.

No other setup is needed — the container image is prebuilt, so nothing compiles on your machine.

## Running it

**macOS / Linux**
```bash
./install.sh
```

**Windows (PowerShell)**
```powershell
.\install.ps1
```

Either script will:
1. Check that Docker is installed.
2. Create a `.env` file (from `.env.example`) if you don't already have one.
3. Pull the prebuilt tutorial image and start it.

The first run downloads the image (a few GB) — this is a plain download, not a build, so it should be similar on every machine regardless of CPU or OS.

## Opening Jupyter

Once the container is running, open:

```
http://localhost:8888
```

in your browser. No token or password is required (the port is only reachable from your own machine, not your local network).

## Troubleshooting

- **"Docker was not found"**: make sure Docker Desktop is running (check for its icon in the system tray/menu bar), not just installed.
- **Port 8888 already in use**: edit `docker-compose.tutorial.yml` and change `"127.0.0.1:8888:8888"` to, e.g., `"127.0.0.1:8889:8888"`, then open `http://localhost:8889` instead.
- **Nothing loads at localhost:8888**: check the terminal output — Docker Desktop may still be pulling the image, which can take a few minutes on the first run.
