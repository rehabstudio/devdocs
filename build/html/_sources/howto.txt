.. role:: raw-html(raw)
   :format: html

How to work with reStructured Text
=====================================

Quick Overview
==============

==================
h2. Heading 2 Text
==================

******************
h3. Heading 3 Text
******************

h4. Heading 4 Text
------------------

h5. Heading 5 Text
^^^^^^^^^^^^^^^^^^

h6. Heading 6 Text
******************

    Indented text
        More indented    

Back to standard text.


- Bullet list 1
- Bullet list 1
- Bullet list 1

#. Numbered List 1
    #. Numbered List 1
    #. Numbered List 1
    #. Numbered List 1
#. Numbered List 3
    - Bullet list 1
    - Bullet list 1
    - Bullet list 1
#. Numbered List 2

.. image:: https://www.google.com/a/rehabstudio.com/images/logo.gif?alpha=1&service=google_default

`rehabstudio <http://www.rehabstudio.com/>`_


HTML Injection
=============

If there just *has* to be a line break here,
:raw-html:`<br><strong><em>(line break demonstrating pure HTML injection)</em></strong><br>`
it can be accomplished with a "raw-html" role.

Body Elements
=============
Grid table:

+--------------------------------+-----------------------------------+
| Paragraphs are flush-left,     | Literal block, preceded by "::":: |
| separated by blank lines.      |                                   |
|                                |     Indented                      |
|     Block quotes are indented. |                                   |
+--------------------------------+ or::                              |
| >>> print 'Doctest block'      |                                   |
| Doctest block                  | > Quoted                          |
+--------------------------------+-----------------------------------+
| | Line blocks preserve line breaks & indents.                      |
| |     Useful for addresses, verse, and adornment-free lists; long  |
|       lines can be wrapped with continuation lines.                |
+--------------------------------------------------------------------+

Simple tables:

================  ============================================================
List Type         Examples (syntax in the `text source <./_sources/howto.txt>`_)
================  ============================================================
Bullet list       * items begin with "-", "+", or "*"
Enumerated list   1. items use any variation of "1.", "A)", and "(i)"
                  #. also auto-enumerated
Definition list   Term is flush-left : optional classifier
                      Definition is indented, no blank line between
Field list        :field name: field body
Option list       -o  at least 2 spaces between option & description
================  ============================================================

================  ============================================================
Explicit Markup   Examples (visible in the `text source`_)
================  ============================================================
Footnote          .. [1] Manually numbered or [#] auto-numbered
                     (even [#labelled]) or [*] auto-symbol
Citation          .. [CIT2002] A citation.
Define Links      The following urls are defined and used in Inline Markup section below
Hyperlink Target  .. _reStructuredText: http://docutils.sf.net/rst.html 
Anonymous Target  __ http://docutils.sf.net/docs/ref/rst/restructuredtext.html
Directive ("::")  .. image:: https://www.google.com/a/rehabstudio.com/images/logo.gif?alpha=1&service=google_default
Substitution Def  .. |substitution| replace:: like an inline directive
Comment           .. is anything else
Empty Comment     (".." on a line by itself, with blank lines before & after,
                  used to separate indentation contexts)
================  ============================================================

Inline Markup
=============
*emphasis*;

**strong emphasis**; 

`interpreted text`; 

`interpreted text with role`:emphasis:; 

``inline literal text``; 

standalone hyperlink, http://docutils.sourceforge.net; 

named reference, reStructuredText_;

`anonymous reference`__; 

footnote reference, [1]_; 

citation reference,

[CIT2002]_; 

|substitution|; _`inline internal target`.

Directive Quick Reference
=========================

See <http://docutils.sf.net/docs/ref/rst/directives.html> for full info.



================  ============================================================
Directive Name    Description (Docutils version added to, in [brackets])
================  ============================================================
attention         Specific admonition; also "caution", "danger",
                  "error", "hint", "important", "note", "tip", "warning"

                  .. hint:: A hint may look like this!

image             ``.. image:: picture.png``; many options possible
figure            Like "image", but with optional caption and legend
parsed-literal    A literal block with parsed inline markup
rubric            ``.. rubric:: Informal Heading``
epigraph          Block quote with class="epigraph"
highlights        Block quote with class="highlights"
pull-quote        Block quote with class="pull-quote"
compound          Compound paragraphs [0.3.6]
table             Create a titled table [0.3.1]
list-table        Create a table from a uniform two-level bullet list [0.3.8]
csv-table         Create a table from CSV data [0.3.4]
contents          Generate a table of contents
sectnum           Automatically number sections, subsections, etc.
header, footer    Create document decorations [0.3.8]
target-notes      Create an explicit footnote for each external target
math              Mathematical notation (input in LaTeX format)
include           Read an external reST file as if it were inline
raw               Non-reST data passed untouched to the Writer
replace           Replacement text for substitution definitions
unicode           Unicode character code conversion for substitution defs
date              Generates today's date; for substitution defs
class             Set a "class" attribute on the next element
================  ============================================================

Interpreted Text Role Quick Reference
=====================================
See <http://docutils.sf.net/docs/ref/rst/roles.html> for full info.

================  ============================================================
Role Name         Description
================  ============================================================
emphasis          Equivalent to *emphasis*
literal           Equivalent to ``literal`` but processes backslash escapes
math              Mathematical notation (input in LaTeX format)
PEP               Reference to a numbered Python Enhancement Proposal
RFC               Reference to a numbered Internet Request For Comments
raw               For non-reST data; cannot be used directly (see docs) [0.3.6]
strong            Equivalent to **strong**
sub               Subscript
                  H\ :sub:`2`\ O
sup               Superscript
                  E = mc\ :sup:`2`
title             Title reference (book, etc.); standard default role
================  ============================================================