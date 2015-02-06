Frontend Standards
==================

.. toctree::
   :maxdepth: 2
   :hidden:

==================
Low-hanging fruit
==================
The long-term objective is that all the code we produce has a single voice. This means easier code maintenance in the future, and increases portability.

*******
General
*******
- Use four spaces for tab indentation.
- Be a good citizen. Consider your colleagues now and in the future.

****
HTML
****

- Double-quote all attributes which require values
- Don’t use values for Boolean attributes
- Don’t use closing slashes on empty elements

  .. literalinclude:: code/html/attributes.txt
      :language: html
      :linenos:
      :lines: 1

- For styling, a class is always preferred to an id; reserve the id for truly unique features such as an attached JS event.
- Class names should be lowercase and hyphenated.
- If adding a class just as a JS hook, use the js- prefix on the name.

  .. literalinclude:: code/html/class.txt
      :language: html
      :linenos:
      :lines: 1

- Always use appropriate elements for the task at hand; for example, always use a button to submit a form, never another element that looks like a button but has behaviour added with script.

  .. literalinclude:: code/html/elements.txt
      :language: html
      :linenos:
      :lines: 1-5


****
Sass
****

- Order rules by property group, and break each rule onto a separate line.
- Leave a single space between the colon and the first value.
- Single-quote all string values, including inside the URL function.
- Except where specifically required (e.g. a time value for transitions), do not use a unit with a zero value; 0px is the same as 0em, so simply use 0.

  .. literalinclude:: code/sass/rules.txt
      :language: css
      :linenos:
      :lines: 1-10

- Don’t use **id** selectors to apply rules.
- Use a new line for each selector.

  .. literalinclude:: code/sass/noid.txt
      :language: css
      :linenos:
      :lines: 1-6

- When using **class** names, don’t specify the element in the selector unless there is a specific reason for it (e.g. specificity)

  .. literalinclude:: code/sass/noelement.txt
      :language: css
      :linenos:
      :lines: 1-5

- Avoid **!important** wherever humanly possible.
- Don’t use long selector chains; if you’re going past two selectors, consider using a new class instead.

  .. literalinclude:: code/sass/chains.txt
      :language: css
      :linenos:
      :lines: 1-5

- When listing vendor prefixes, always have the unprefixed property name last.

  .. literalinclude:: code/sass/prefix.txt
      :language: css
      :linenos:
      :lines: 1-2

- Keep all variables in a single variables file and use generic names.
- Using **@import** creates global scope so avoid duplicating variable names, even between variables and maps.
- Like classes, variables can be used in multiple places, and their function can change. An exception to this would be if you’re using loops and require a variable specifically for the current scope.

  .. literalinclude:: code/sass/variables.txt
      :language: css
      :linenos:
      :lines: 1-5

- Do not nest more than three levels deep. While nesting is powerful, it can have a negative impact on readability and, therefore, maintainability.
- When available (in release 3.3), use source maps for easier debugging (http://devtoolsecrets.com/secret/editing-use-sass-source-maps.html).
- If not using Compass or an autoprefixer, make a Mixin for any CSS property which requires vendor prefixes.

  .. literalinclude:: code/sass/nesting.txt
      :language: css
      :linenos:
      :lines: 1-4

- Consider placeholder selectors for repetitive code instead of extending other typed classes. Placeholder selectors will not be written to the stylesheet.

  .. literalinclude:: code/sass/placeholder.txt
      :language: css
      :linenos:
      :lines: 1-8


**********
JavaScript
**********

- Comma-separate blocks of variables rather than repeat var.
- Outer-encase all strings in single-quotes.
- Defined names should be camelCased.
- Use an underscore prefix to name private variables.
- Variables with a Boolean value should be prefixed with is.

  .. literalinclude:: code/js/is.txt
      :language: js
      :linenos:
      :lines: 1-3

- Use line breaks to show the contents of a function or conditional statement.

  .. literalinclude:: code/js/linebreaks.txt
      :language: js
      :linenos:
      :lines: 1-7

Do not perform calculations or access the DOM when defining loops.

  .. literalinclude:: code/js/domloops.txt
      :language: js
      :linenos:
      :lines: 1-12

- Lint your code automatically if your text editor allows, or manually if not. Use JSHint rules (http://jshint.com/).

********
Comments
********

- Comment everything, all the time; all code should be minified before going into production, so trying to save space at this point is a false economy.
- Frontend code comments should follow phpDocumentor (http://bit.ly/3FPH7g) standards.
- For CSS, comment uncommon practices or decisions.
- Comment class methods and loose functionality, along with any other complex logic that may benefit from them.
- Document the parameters and return types of your methods and write an accurate description of the purpose of the method.
- If the method is complex and has multiple use syntaxes, document them as examples in the comment block.

  .. literalinclude:: code/comments/below.txt
      :language: js
      :linenos:
      :lines: 1-22

***************
Further reading
***************

- https://github.com/necolas/idiomatic-css
- https://github.com/stubbornella/oocss-code-standards
- https://github.com/rwaldron/idiomatic.js
- https://github.com/anthonyshort/idiomatic-sass
