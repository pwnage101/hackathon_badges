Build Instructions
==================

1. install inkscape: https://inkscape.org/.
1. alter design by opening hackathon_badges.svg.
1. make sure you only edit the upper left badge.  The rest are parametric clones, so they will automatically update themselves.
1. save and quit inkscape.
1. make
1. check in the build directory for each layer, make sure they look good (open them in a web browser or inkscape).

Cutting Instructions
====================

We cut these using the Epson CNC laser cutter at the MIT Hobby Shop.  The
machine was configured to accept data from CorelDraw, so we did the following
things to get it to work with our files:

1. on the computer, open CorelDraw.
1. new document (verify the dimensions are 28"x40").
1. File -> Import -> select hackathon_badges_profile.svg.
1. File -> Import -> select hackathon_badges_text.svg.
1. align the layers correctly.
1. select the profile layer and make sure the outline is of thickness "hairline" and color is green (#00ff00).
1. select the text layer and make sure the outline is of thickness "hairline" and color is red (#ff0000).
1. File -> Print.
1. Properties -> Color Mapping (?)
1. enable color mapping using the checkbox
1. delete all the colors except for red and green
1. give red a speed of 50%, and power of 50%.
1. give green a speed of 5%, and power of 100%.
1. make sure red is first, then green is second.
1. click OK to get out of the properties dialog
1. click OK to get out of the print dialog

Now verify that the CNC data was sent to the machine.  The steps that follow
are manual labor steps:

1. turn on the vent fan.
1. open the air assist valve.
1. insert wood.
1. turn on the laser.
1. press GO.

Don't walk away, stay in case there is a fire.
