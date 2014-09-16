Image Formats
==================

.. toctree::
   :maxdepth: 2
   :hidden:
   
****
JPEG
****

JPEG images are best for photographs - unless transparency is required, in which case PNG is more suitable. However, with JPEG we always need to balance quality with filesize.

To accommodate high DPI screens, save the image at double the dimensions required (e.g. if 100x100 on the web, save as 200x200). Use Save for Web and drop the quality as low as possible before any obvious visible artefacting appears in the 50% preview pane. This will have to be done by eye. On some images we can get as low as ~25% without any noticeable artefacting.

See this example: http://www.broken-links.com/tests/highdpi.html. Images on the right are double dimension, low quality, but on high DPI screens generally appear as good or better than the higher quality on the left, and file size is roughly comparable.

If the image needs to be downloaded by the user (e.g. wallpapers) the approach above won’t work, so save at regular dimensions but again, keep quality as low as possible without the appearance of artefacting.


****
PNG
****

PNG are most suited for non-photorealistic images, and photo images in which transparency is required. Transparency can be expensive (file size and performance) so try to keep it contained to smaller images.

If a simple image with no more than 256 colours, with no alpha transparency, save as an 8-bit PNG. Otherwise, use 24-bit. As before, if required to suit high DPI screens, save at double the dimensions.

***
SVG
***

SVG is generally the better option for icons, charts and logos as it’s scalable so suits high-DPI screens.
Avoid using filters or gradients where possible as they’re expensive to performance.