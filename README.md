```
docker pull tiagohillebrandt/deb-builds:jammy
docker run --rm -it --platform linux/amd64 --mount type=bind,source=$HOME/ubuntu,target=/home/ubuntu tiagohillebrandt/deb-builds:jammy bash
```
