Versioning
==========

.. toctree::
   :maxdepth: 2
   :hidden:

******************************
Make your life easier with Git
******************************

Git is a distributed revision control and source code management system with an emphasis on speed, data integrity and support for distributed, non-linear workflows.

As with most other distributed revision control systems, and unlike most client–server systems, every Git working directory is a full-fledged repository with complete history and full version-tracking capabilities, independent of network access or a central server. 

Like the Linux kernel, Git is free software distributed under the terms of the GNU General Public License version 2.

*********
Resources
*********

- `GitHub Help <https://help.github.com/>`_

*******************
Generating SSH Keys
*******************

- `Generating SSH Keys (Linux, Windows, Mac OS X) <https://help.github.com/articles/generating-ssh-keys/>`_

*******************************************
Create a new repository on the command line
*******************************************

Follow these instructions::

    touch README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin https://github.com/user/projectname.git
    git push -u origin master

*************************************************
Push an existing repository from the command line
*************************************************

``git push <REMOTENAME> <BRANCHNAME>``

- `More info about pushing to a remote <https://help.github.com/articles/pushing-to-a-remote/>`_

****
Why?
****

* It's all about team work, code backup and version control

***********
Methodology
***********

All our code must use the GitFlow Methodology <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>.
