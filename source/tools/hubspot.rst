HubSpot
============

What is HubSpot?
----------------
HubSpot is an "inbound marketing software platform" which offers features for internet marketing, such as emails, blogging and social media. This piece of software is mostly used by the marketing team.

This document will mostly cover tips on how to use the emailer tool/rehabstudio email template.

The rehabstudio email template
------------------------------

The rehabstudio template can be used for two different purposes. Sending out invites (Event template) or articles/information within a newsletter (Newsletter template).

Event Template
~~~~~~~~~~~~~~~

The Event template is used to deliver invites for an event to recipients. This template consists of:

- Intro detailing the event.
- Call to action button for sign up.
- The venue details, location and time.

Newsletter Template
~~~~~~~~~~~~~~~~~~~

The Newsletter template is for sending articles or information, i.e a monthly newsletter. This template consists of:

- Intro detailing the newsletter context.
- Article slots, which can be modified depending on the number of articles to include.


The 2 in 1 template allows you to switch between the event or newsletter email layouts. Each layout includes a spotlight, monthly links and footer section. The spotlight and monthly links can be hidden if not needed.

**Name of template:**  ``rehabstudio_new_mailer.html``

Getting started on HubSpot
--------------------------

Create a new email using the HubSpot template
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To create a new email with HubSpot:

- Click 'Create new email'.
- Select the new template titled ``rehabstudio_new_mailer.html``.
- Give the email a title, then click 'Create'.

The Editor
------------------

This section allows you to edit the contents of the email template. Each of the contents are stored in modules. You can manipulate the modules by showing or hiding them.

The ``rehabstudio_new_mailer.html`` template has a number of custom modules, with options to either show or hide sections. This will depend on the type of email your building. The options can be found in the ‘Edit Modules’ panel and are highlighted in orange.

**Important!** - you may have to refresh the page to see changes within the edit module panel and template.

Choose type of email
~~~~~~~~~~~~~~~~~~~~
This option will determine if you are making either an Event or an Newsletter. Selecting one will change the layout of the email, opening more options for further editing.

- Event
    Display event layout.

        `Hide venue content`
            Hides the events time and location, if you just want to show the event content.
        `Hide invite content`
            Hides the invite content, if you just want to display the events venue details (time and date).

- Newsletter
    Display newsletter layout.

        `Choose the amount of slots`
            This option will allow you to pick how many article slots you want on the newsletter template.

            **Important!** Refresh the page after applying the number of slots to see added blocks.

- Other options
    Display the staff spotlight
        Show or hide the staff spotlight section.
    Display the monthly links
        Show or hide the monthly links section.
        
Editing the content
-------------------
Editing the content of the email is simple. Just point and click on the item you want to edit.

Replacing  Images (Retina Images)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

HubSpot automatically compresses images within emails so they load faster for the end users. But the compression makes the images appear blurry and grainy, especially on retina screens. To fix this issue, HubSpot gives you the ability to disable it’s compression by adding a simple query parameter called ``'?noresize'``.

To make sure images are retina ready, just follow the simple steps within the following document.

- `How to add high-resolution images to your email <https://docs.google.com/a/rehabstudio.com/document/d/15j4ebfgOlPttL9gsMy_a65usBE4lzKsM2yVNlzlUgSA/edit?usp=sharing>`_

**Important!** Make sure the images are uploaded twice the size and then resized within email editor.


Adding links to arrow images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The arrow images located in the newsletter layout works differently from other images. To add a link, you simply:

- Click on the 'Arrow image'.
- Click the 'Insert/edit link' button.
- Add link.
- Click the 'Update link' button.

Footer
~~~~~~

To edit the address section of the footer, from navigation bar you:

- Select 'Content', click 'Content settings'.
- Select 'Email' on the left panel (5th from top).
- Then input the correct details under ‘Email Footer Information’.
- Save changes.

**Important!** Always check the correct address is being used on the email before sending. This setting will change the address on all emails using the ``rehabstudio_new_mailer.html`` template. If incorrect simply follow the steps above and save.

Additional information.
-----------------------

Mailto link
~~~~~~~~~~~

The mailto link opens the default mail program with the TO field already filled out. This link can be added to text or the arrow images. To add a mailto link, you simply write ‘mailto:someone@yoursite.com’ (replacing someone@yoursite.com with the desired email) into the add link section.

**Important!** Adding the mailto link to other images other than the arrow images will not work. HubSpot adds a http:// protocol which opens a new tab on the browser. Instead of opening the default mail program.




