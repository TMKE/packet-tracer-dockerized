# Dockerized Packet Tracer
This is Packettracer 7 in a docker container.
# Usage
Clone this repository:
```bash
git clone https://github.com/TMKE/packet-tracer-dockerized ~/packet-tracer-dockerized
```
CD to the cloned repo:
```bash
cd ~/packet-tracer-dockerized
```
Build the image from the Dockerfile:
```bash
sudo docker build -t packet-tracer7 .
```
Run the image:
```bash
sudo docker run -it --rm -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME/.packettracer:/root/pt packet-tracer7
```
If nothing is shown, run the following command before running the image:
```bash
xhost +
```
You can access the saved `pkt` files from `~/.packettracer/saves`.
# Info
- Ubuntu Version: 16.04
- Packettracer version: 7
- Size of the image: 569MB
# Screenshots
![image](https://user-images.githubusercontent.com/73914792/162714318-9bb94520-e821-458d-970d-2044d4754dc4.png)
![image](https://user-images.githubusercontent.com/73914792/162714496-44051c6f-68b5-4e78-a435-af7af1d918e7.png)
