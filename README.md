X11 libs for Homebrew
=====================

The last currently available XQuartz build is from 2016, and the X11 libs that
it comes with, are outdated as well. Whenever there is a need to link a library
with both X11 libs and the libraries from homebrew, a conflict possible. This
is why homebrews usually is focused on non-X11 projects, although there are
many that are either only X11-based or don't create conflicts.

Enter font shaping with harfbuzz and font display with libXft. Harfbuzz is a
modern library that has a freetype2 backend, which is both shipped with XQuartz
and homebrew. libXft is a respectable core library for drawing, among others,
freetype2 fonts, and comes with XQuartz.  Linking both in one program is
impossible, because XQuartz's libfreetype and homebrew's freetype are of
different versions and are binary incompatible.

Here is my attempt to resolve the problem. This is a tap that installs libXft
(and potentially others) into homebrew-specific locations, built with homebrew
freetype and fontconfig, however with a dynamic dependency on XQuartz libX11
and libXrender. Install it with

    brew install dk/x11/libxft

Beware, it is rather hacky and might not build because this is my first ever
homebrew formula.

AUTHOR
======

Dmitry Karasik
