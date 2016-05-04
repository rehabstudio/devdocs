Docker
===================================

.. toctree::
   :maxdepth: 2
   :hidden:

*************
Docker images
*************

All reusable Docker images should abide by the following rules:

* Where less frequently used packages are desired, consider making a base image and use that for the generic packages.
* Use the tagging structure, :code:`0.9` for images - this should be reflected in GitHub & Dockerhub releases

*******
Distro
*******

For build tools, where possible we should make use of Alpine Linux as this is a very lean image. Additional packages can be added with:

.. code-block:: bash

        apk add --update {packages}

When mirroring server environments, the distro should always match the server. For Google App Engine we should use debian:wheezy.

***********
Dockerfile
***********

* All images should be ephemeral
* MAINTAINER set to devops@rehabstudio.com
* WORKDIR should point at the mounted root
* COPY instead of ADD, unless you want to unpack an archive
* RUN should be used efficiently. Multi-line when possible, e.g. 

.. code-block:: bash

        RUN apt-get install -y curl \
	wget \
	perl

* CMD should be in the format :code:`CMD [“exec”, “param1”, “param2”]`, not :code:`CMD exec param1 param2`
* ENTRYPOINT don’t use this unless you have a specific need to
* VOLUME to be used where data should be added to a volume on mount. The container shouldn’t rely on anything being mounted from host though
* USER shouldn't be specified unless you're doing some user-specific actions inside the container. The default user (e.g. root) is fine for most containers.
* ONBUILD shouldn’t be used unless there’s a really good reason to do so
* Use a .dockerignore when it makes sense - exclude what doesn’t need added to the container
* Cleanup after yourself. Once you have installed whatever packages you desire, RUN a clean up, e.g. `rm -rf /var/lib/apt/lists/*` (This can be appended at the end of a multi-line apt-get install, making the install and cleanup a single RUN)

******
Repo
******

* All public images should live in a GitHub repo
* The repo should be named `docker-{DISTRO}-{NAME}`

*************
Docker Hub
*************

The following steps should be taken for images on the rehabstudio docker hub:

* Use https://imagelayers.io/ and include an embed
* In the long description:
* Include examples as to how to build and run the container
* Run examples should also include instructions on how to mount volumes, if relevant
* Mention that issues / comments should be raised on the GitHub page, not the Dockerhub page

***********
README
***********

The README.md should follow these rules:

* Include a Dockerhub embed
* Have a Usage section
* Mention any variants, if applicable (e.g. -alpine)
* Specify which docker version has been tested
