# znc-tor
Alpine Linux based docker image for ZNC with support for darknet services

## Prerequisites
Move an existing ZNC config (usually $HOME/.znc/) to src/znc-data. This will be copied over to the image when built

## Building
* ```git clone https://github.com/antidot3/znc-tor.git ; cd znc-tor```
* ```make```

## Running container
* ```docker run -d -p 8080:8080 --name znc-tor antid0t3/znc-tor```
This will run ZNC on port 8080 of your host machine
