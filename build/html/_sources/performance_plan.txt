Performance Plan
==================

.. toctree::
   :maxdepth: 2 
   :hidden:

****************
Responsibilities
****************
Granular detail of the responsibilities at each stage of build.

********
Strategy
********

- *Source data on target market - mobile, OS, average broadband*

******
Design
******

- Design appropriately for the target market
- Design appropriately for the target devices, e.g. performance restrictions on phone/tablet
- Export images in the appropriate format, optimised for balance of quality and file size

**********
Production
**********

- Set a performance budget with devs and enforce the budget on change request

*******
Dev Ops
*******

- Use Page Speed module for compression, caching, expires headers
- Enable appropriate number of CDNs/distribution points
- Site should scale appropriately where needs be and have sufficient server specifications to support the core platforms tasks
- Server should be located in the optimum locale for the target market
- Server should be running the minimum services required to run the application
- Implement Sitespeed.io (or similar) into deploy script

********
Back-end
********

- Render HTML templates
- Cache assets, db queries and opcode where appropriate
- Optimise code, ensuring the likes of loops and file i/o are as efficient as possible
- Compress images upon upload where possible, according to the nature of the project

*********
Front-end
*********

- Use progressive enhancement
- Optimise code, ensuring the likes of loops are as efficient as possible
- Optimise (minify, concatenate, compress) assets (css, js, img, svg) in workflow
- Ensure that assets are only loaded when required; use lazy or conditional loading
- Log timestamps of key moments for measurement
- Enforce the performance budget

**
QA
**

- Use Page Speed Insights (or similar) and developer tools to flag slow page load problems\ :sup:`1`\ 
- Visually inspection for-over optimisation of SVG  
- Run selenium grid across main 4 desktop browsers\ :sup:`2`\ 
- Automated testing across supported devices, including bandwidth throttling\ :sup:`3`\ 
- Enforce performance budget
- Ensure no double redirects (particularly where specific mobile content is present)
- Measure performance of external asset servers
- Check that relevant assets are benefiting from server side compression\ :sup:`4`\ 


*****
Notes
*****

#.  Analyse what specific elements are causing issue and ensure that optimisations suggested above have been applied.
#.  Use our own tool and check for any spinning slow page loads (general check but focus on anything identified in page speed insights analysis).  Acceptable limits for animated sites are 10 seconds for primary non-cached first page load and no more than 4 seconds for cached page load.  Any exceeding of these numbers needs accounted for. Load times for sites with no animation should be no more than 5 and 2 sec respectively. If no CMS present then lower again. Any exceptions need explained. Page load time is that returned by browser developer tools. Performance test runs should be performed against staging site which should be comparable cpu to the live site. A subsequent run is required if CDNs are to be enabled for go live. (up to 1 day required for propagation)
#.  If it is agreed with customer that users are accessing apps over slower connections but this is an exception to standard QA testing
#.  Developer responsibility but needs checked by QA.