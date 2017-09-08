# ubuntu-firefox

Sometime you want to run a GUI application in a docker container.
There are some ways to do it, e.g., running VNC or SSH with X11 forwarding.

This repository show another way. Use it to create a docker container that runs Firefox.
We share our host X11 socket with the container, so an application running in the container shows on our own desktop.

# Installing and running

```bash
git clone https://github.com/h3dema/ubuntu-firefox.git
cd ubuntu-firefox
bash run.sh
```
