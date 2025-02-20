# Stable Diffusion

Edit `.env` file if necessary

```sh
# Only first time and every time after updating the repository
# You can change "version" variable but functionality is not guaranteed
./preinstall.sh

# Run stable diffusion (for the first time for a long time)
./docker-compose.sh up -d --build

# Logs (follow)
./docker-compose.sh logs -f webui

# Stop and remove image
./docker-compose.sh down --rmi local
```

Open `http://localhost:7860`
