FROM  hypriot/rpi-node
RUN apt-get update && apt-get clean
RUN apt-get install -y build-essential python-rpi.gpio nodejs
RUN npm cache clean && npm install -g --unsafe-perm  node-red

#RUN  curl -sL https://raw.githubusercontent.com/node-red/raspbian-deb-package/master/resources/update-nodejs-and-nodered | sh -
RUN npm install -g johnny-five --unsafe-perm --force 
RUN npm install -g raspi-io --unsafe-perm --force 
RUN npm install -g node-red-contrib-gpio --unsafe-perm --force

RUN apt-get update && sudo apt-get install python-rpi.gpio

# User data directory, contains flows, config and nodes.
RUN mkdir /data

# User configuration directory volume
VOLUME ["/data"]
EXPOSE 1880

# Environment variable holding file path for flows configuration
ENV FLOWS=flows.json

CMD ["node-red", "start", "--", "--userDir", "/data"]
