# Docker Picamera
Docker container for streaming a Raspberry Pi's camera via HTTP/MJPG.

## How to start
Perform a docker build :
```bash
docker build -t cmcrobotics/picamera
```
Then run
```
sudo docker run -d --name=picam --restart=always   --device /dev/vchiq   -p 8000:8000   -e VFLIP=true -e RESOLUTION=800x480   cmcrobotics/picamera
```
