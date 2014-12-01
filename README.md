# devpi-web

Here you'll find a Docker image to run [devpi][devpi] with. It is based on the
[official Python images][pyhub]. This image is different to that of [mattupstate/devpi]
in that it includes the `devpi-web` package for the devpi web interface.

## Usage

Run a devpi container:

    $ docker run --rm -it -p 3141:3141 mattupstate/devpi-web

This will run devpi as if you were to run it yourself with the following options:

    $ devpi-server --host 0.0.0.0 --port 3141 --restrict-modify root --serverdir /data

Once your container is running, [open the web UI](http://localhost:3141) in your browser
or verify you can reach devpi:

    $ curl http://localhost:3141/root/pypi/+simple/

Optionally, you may want to mount a volume to devpi or perhaps run it detached:

    $ docker run --name devpi-web -p 3141:3141 -v /var/lib/devpi:/data mattupstate/devpi


[mattupstate/devpi]: https://registry.hub.docker.com/u/mattupstate/devpi/
[devpi]: http://doc.devpi.net "devpi documentation"
[pyhub]: https://registry.hub.docker.com/_/python/ "Official Python Docker images"
