Docker
======


What is Docker?
---------------

Docker is an open platform for developers and sysadmins to build, ship, and
run distributed applications. Consisting of Docker Engine, a portable,
lightweight runtime and packaging tool, and Docker Hub, a cloud service for
sharing applications and automating workflows, Docker enables apps to be
quickly assembled from components and eliminates the friction between
development, QA, and production environments. As a result, IT can ship faster
and run the same app, unchanged, on laptops, data center VMs, and any cloud.

Solomon Hykes, Docker’s Founder & CTO, gives an overview of Docker in this
short video:  https://www.youtube.com/watch?v=ZzQfxoMFH0U

How we use it
-------------

We're just beginning to use Docker heavily throughout rehabstudio. We mostly
use docker locally to fulfil the same purpose that Vagrant did previously
(building isolated, reproducible development environments), however, we're
beginning to use Docker much more heavily in production and deployment
settings also. Keep tuned!


Installation
------------

**NOTE:** The minimum required version of docker at rehabstudio is **1.3**. Docker/boot2docker
1.3.0 added support for mounted volumes when using boot2docker on OSX.

Linux
~~~~~

Docker is best supported on Linux, you can probably find packages for your
preferred distribution here: https://docs.docker.com/installation/.

OSX
~~~

Install Docker and boot2docker following the instructions on
this page: https://docs.docker.com/installation/mac/.

Next, we need to forward the appropriate ports so that we can reach the
running appengine development server directly from the host OS::

    $ VBoxManage controlvm boot2docker-vm natpf1 "aesdk,tcp,127.0.0.1,8080,,8080"
    $ VBoxManage controlvm boot2docker-vm natpf1 "aesdkadmin,tcp,127.0.0.1,8000,,8000"

Please also ensure that the project your working exists inside your ``/Users``
directory in order for the auto-mounting to work.

**Note:** If you see a message in the terminal that looks something like this::

    To connect the Docker client to the Docker daemon, please set: export DOCKER_HOST=tcp://192.168.59.103:2375

you can safely set the environment variable as instructed. You should also
probably add this ``export`` command to your ``.bashrc`` so that it persists
across terminal windows/reboots.

Windows
~~~~~~~

Not supported yet (we just haven't tried, give it a go, it might work). Pull requests very welcome.

