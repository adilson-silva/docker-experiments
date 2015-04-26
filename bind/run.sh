docker run --name='bind' -d -p 192.168.0.100:53:53/udp -p 10000:10000 \
-v /opt/bind:/data sameersbn/bind:latest
