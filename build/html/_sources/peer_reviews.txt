Peer Reviews
===================================

.. toctree::
   :maxdepth: 2
   :hidden:

This document exists as a proposal for future direction.  This process is not yet doctrine within rehabstudio.

“Feedback is important for engineers to grow in their jobs. By having a culture of ‘everyone’s code gets reviewed’ you promote a culture of positive, constructive feedback. In teams without review processes, or where reviews are infrequent, code review tends to be a tool for criticism, rather than learning and growth.”
- Alex Gaynor

*********
Resources
*********

- `Effective Code Review <http://alexgaynor.net/2013/sep/26/effective-code-review/>`_ 
- `How to do Effective Peer Code Reviews <http://news.dice.com/2012/10/30/how-to-do-effective-peer-code-reviews/>`_
- `Peer Code Review An Agile Process <http://www.slideshare.net/gsporar/peer-code-review-an-agile-process-2502327>`_
- `11 Best Practices of Peer Code Review [pdf] <http://smartbear.com/SmartBear/media/pdfs/WP-CC-11-Best-Practices-of-Peer-Code-Review.pdf>`_
- `Best Kept Secrets of Peer Code Review [pdf] <http://smartbear.com/SmartBear/media/pdfs/best-kept-secrets-of-peer-code-review.pdf>`_

****************
Proposed Process
****************

- Everybody gets code reviewed, but not every day - rotating/random checks
- Work in feature branches not to be merged into develop without a review
- Keep to 30 minute sessions (no more than 400 lines of code)
- Use a checklist to compare with internal standards

*********
Questions
*********

* Do pre-commit reviews fit with our Git flow?
* How do we review one-man projects?
