FROM philipz/raspberry-pi-crosscompile

RUN apt-get update
RUN apt-get install -y scons build-essential

WORKDIR /opt/sources

RUN git clone https://github.com/mongodb/mongo.git
WORKDIR mongo
RUN git checkout v3.0
RUN scons --propagate-shell-environment --cc=/opt/rpi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc --cxx=/opt/rpi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++ --prefix=/opt/mongo-rpi install
