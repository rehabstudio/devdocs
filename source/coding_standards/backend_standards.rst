Backend Standards
=====================================

.. toctree::
   :maxdepth: 2
   :hidden:

***********************************
Python
***********************************

Where applicable (in most cases), please adhere to Pycodestyle (formerly PEP8) https://pypi.python.org/pypi/pycodestyle/. The style guide itself advises when it is acceptable to disregard this.

***********************************
PHP
***********************************

Existing Standards and Code Sniffer
-----------------------------------

Thankfully, there are already agreed PHP community coding standards, and rehabstudio adopts these.

When coding in CakePHP, please use the CakePHP coding standard, which is available for CodeSniffer, this makes it super simple to integrate into your Grunt/Gulp setup.

- http://book.cakephp.org/2.0/en/contributing/cakephp-coding-conventions.html
- https://github.com/cakephp/cakephp-codesniffer

Should you be working with any other framework, it is acceptable to use PSR2 or PSR1, but you must use one of these 3 standards!

Supplimentary
-------------

Furthermore, please observe the following:

- File encoding is UTF-8
- The default permissions for folders are octal 0755, for files octal 0644. Only if the file must be executable (i.e. from console) use octal 0744 for files.
- Never do a SELECT * unless you really need every field return, SELECT * queries have a massive overhead. (This also applies to "find all" commands within frameworks).

