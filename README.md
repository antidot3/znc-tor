# znc-tor
Alpine Linux based docker image for ZNC with support for darknet services

## Prerequisites
* Install docker
* Move an existing ZNC config dir (usually ```$HOME/.znc/```) to ```src/znc-data```. This will be copied over to the image when built
* Map any onion addresses you want to access in ```src/torrc``` to a local ip (preferably one that isnt in use on your network)

You probably also want to change the architecture of the Alpine image to the architecture you are going to run the container on

## Building
* ```git clone https://github.com/antidot3/znc-tor.git ; cd znc-tor```
* ```mv /path/to/znc-config/ ./src/```
* ```make```

## Running container
* ```docker run -d -p 8080:8080 --name znc-tor antid0t3/znc-tor```

This will run ZNC on port 8080 of your host machine

## Other info
When you try to connect to your new ZNC server from your IRC client you might get an error saying something about invalid ssl fingerprint. This can be fixed by running this command in your znc config directory where ```znc.pem``` is:
* ```openssl x509 -sha1 -noout -fingerprint -in znc.pem | sed -e 's/^.*=//;s/://g;y/ABCDEF/abcdef/'```

Add the output of this to your IRC client's ssl fingerprint setting for ZNC
