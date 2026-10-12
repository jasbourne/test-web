docker run -d \
  --name=webtop \
  --restart=unless-stopped \
  --shm-size=1gb \
  -p 3000:3000 \
  -p 3001:3001 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -v webtop-config:/config \
  lscr.io/linuxserver/webtop:ubuntu-xfce