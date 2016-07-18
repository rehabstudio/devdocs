Goro
======


What is Goro?
-------------

Goro is a "content production system" used to build **all sites** that live
directly on the Google top-level domain (e.g. https://www.google.es/activate).

At its core, Goro is a web application that runs on Google App Engine and
provides a set of tools and processes to site owners in order to cut down the
time it takes to produce a high-quality web site.


Learning Resources
------------------

If you cannot access any of these learning resources, Goro itself or even
the Johnny Cage repository then you will need to contact your projects ATL and
request access.

General
~~~~~~~

- `What's The Deal With Goro? <https://drive.google.com/a/rehabstudio.com/file/d/0BxaSrRJmTkSkendpbmhvYjgzVEhuMHlUdTZRUWtnbDl1UWNB/view>`_
- `Agency Guide: Goro <https://agency-guide.googlegoro.com/resources.html#goro>`_
- `High-level Guidelines <https://help.googlegoro.com/docs/136209884559520/vendor-cheat-sheet.html>`_

Development
~~~~~~~~~~~

- `Johnny Cage repository <https://webmaster.googlesource.com/johnny-cage>`_
- `First Time Developer Guide <https://help.googlegoro.com/docs/1340910078212/first-time-goro-developer-creating-branches-pages-sites-and-images.html>`_
- `Goro Help Centre <https://help.googlegoro.com/index.html>`_
- `Viewing & Editing Files <https://help.googlegoro.com/docs/1340917321586/viewing-and-editing-files.html>`_
- `Using AngularJS in Goro <https://help.googlegoro.com/docs/139879180595642/using-angularjs-in-goro.html>`_
- `Template Context Variables <https://help.googlegoro.com/docs/1341006579375/context-variables.html>`_
- `Template Tags <https://help.googlegoro.com/docs/1341012532686/template-tags.html>`_
- `Using Custom Formbox Forms <https://agency-guide.googlegoro.com/custom-formbox-forms.html>`_

Linting / Styling
~~~~~~~~~~~~~~~~~

- `Brand Studio: Agency Code Review Checklist <https://docs.google.com/presentation/d/1B5xsnId43xqAPLXr5Olxk75-TTiSAQ05jsRbxT8VEA8/edit#slide=id.p>`_
- `Template style guide <https://help.googlegoro.com/docs/1341008397610/template-style-guide.html?goro_mode=export>`_
- `HTML/CSS style guide <https://google.github.io/styleguide/htmlcssguide.xml>`_
- `JavaScript style guide <https://google.github.io/styleguide/javascriptguide.xml>`_
- `AngularJS style guide <https://google.github.io/styleguide/angularjs-google-style.html>`_


Coding Standards
----------------

Projects being built through Goro need to adhere to Google's linting rules.
There are various different style guides and standards across different
languages. Check out the linting section of the learning resources for more
specifics.

To lint JavaScript files you can use the "Linter Tool" while editing a file on
Goro. Note that this will not catch AngularJS formatting rules, only plain
JavaScript rules. The tool is located next to the "Actions" and "Preview"
buttons. There is also a command-line linter known as **gjslint** that can be
run with corresponding rulesets. This local linting will speed up development
overall as you'll not have to deploy files to lint them.

Workflow
--------

Creating and authoring project files can be done entirely through the Goro web
application, however this has many disadvantages:

- You need an active internet connection to be able to develop.
- To ensure your JS files lint you'd need to open each one manually and check.
- Goro doesn't have real file source control and has a limited history stack.
- The project will have access to only one "branch" and preview area. If there
  are multiple developers on the project you'll quickly tread on each other's
  toes.

To combat the majority of these errors we can use a local development server for
Goro known as `Johnny Cage <https://webmaster.googlesource.com/johnny-cage>`_.
Utilising this tool allows us to develop locally for speed and use our own local
build tools such as Grunt or Gulp for things such as file uploading and linting.

Developing locally will also allow us to use our own project git repository.
Doing this lets us treat the Goro branch as a preview environment and a tool for
exporting files.


Command-line Tool
------------------

Goro has a CLI that can be installed locally. There is `documentation <https://help.googlegoro.com/docs/1341004351675/command-line-utility-reference.html#vendors>`_ that will help you get it installed on Mac /
Linux. The CLI lets you upload files to Goro in bulk rather than uploading
folders through the Goro web application.

There is an additional "tip" in the documentation which shows you how to alias
`goro`, however, their method listed will only work for your current terminal
session if you're on anything other than a mac.

NOTE: If you are installing the CLI tool, it only works with versions of keyring
lower than or equal to `8.4.0`. At this time you'll need to update the relevant
line in the `requirements.txt` of the CLI vendor download.

If you try to run `goro` from any folder and it fails then you will need to
create your own command. Below is an example `goro` command that can be placed
into any of your `bin` folders (`~/bin`, `/usr/local/bin`) e.g.
`/usr/local/bin/goro`:

.. code-block:: bash

    #! /bin/bash
    python /path/to/your/goro/folder/goro.py "$@"

You may need to restart your terminal for changes to take effect. To test things
work as intended, simply try to run `goro` from any folder.
