Prelaunch Checklist
===================================

.. toctree::
   :maxdepth: 2
   :hidden:

Things that should be checked off (where appropriate) before we consider a site ready to launch.

*********
Front End
*********

- Meta data included and appropriate
- Facebook OpenGraph tags properly set up
- Page titles are descriptive and SEO friendly
- Images have appropriate alt text
- Images have been optimised
- CSS/JS minified
- Favicon created and displayed
- App icons created and displayed
- Analytics installed and reporting
- 404 page exists and is informative
- Javascript console messages suppressed/removed
- Unsupported browser/platform messages in place
- Does the site have RTL locales? Have you used direction: rtl; to mirror things?

*******************
Back End / Platform
*******************

- Default CMS user account created
- Test data removed from DB
- Debug modes turned off
- Setup Sentry logging/reporting
- Lockdown/htpasswd removed
- Ensure GZIP is serving assets.
- Third party
- Facebook Sandbox turned off
- Ensure all third party paid services have billing set up (no trials)

********
Sysadmin
********

- Ensure infrastructure backup is in place
- Ensure DB backup is in place
- New server environment is ready for live
- Logging system updated for live

***********
Post Launch
***********

If using any Facebook services, such as sharing, remember to also enter your URL into the Facebook Debugger (https://developers.facebook.com/tools/debug/) after your site goes live, to ensure the Facebook Cache is cleared. This will prevent 403 Authentication Required errors when sharing your site now that .htpassword has been removed.