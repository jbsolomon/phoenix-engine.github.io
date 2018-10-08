---
title: "The Problem of macOS Mojave 10.14"
date: 2018-10-08T09:36:36-04:00
author: Bodie Solomon
---

I've been working on a cross-platform SDL2 codebase to get Phoenix up
and running, and finally got an OpenGL 4.1 shader to work consistently
on my different build boxes just a few days ago.  There are a few
platform conditionals in my CMake, but the codebase itself is clean.

I just updated to macOS Mojave, and everything broke.
[Emacs stopped redrawing](http://emacs.1067599.n8.nabble.com/weird-startup-error-in-MacOS-Mojave-td465951.html).
My Xcode command-line tools were breaking on every build, and my
Homebrew installation of LLVM was failing to update to 7.0.0.  Most
importantly for Phoenix, there's a new
[bug in SDL](https://bugzilla.libsdl.org/show_bug.cgi?id=4272),
which also appears to
[impact SFML](https://github.com/glfw/glfw/issues/1334).
These problems are obviously impacting other
[platforms](https://github.com/openframeworks/openFrameworks/issues/6149)
[and](https://github.com/faiface/pixel/issues/140)
[projects](https://twitter.com/icculus/status/1047923669991936000).

Perhaps it shouldn't come as a surprise since
[Apple has deprecated OpenGL and OpenCL support](https://developer.apple.com/macos/whats-new/#deprecationofopenglandopencl)
as of macOS 10.14, but something about the timing, with finally reaching
cross-platform coherence in my codebase, really struck a nerve.  I now
find myself without a common supported native graphics interface, unless
you like to count the browser.  What's not to love about Javascript
runtimes and OpenGL ES?

This brings me to my point: The commons of software, like any commons,
becomes diseased when those who partake of its benefits don't commit to
common rules, and don't invest in its health.  Apple can give us all
the finger, but we can give it right back.

From now on, I will refuse to support or enable platforms which reject
or refuse to conform to mainstream common standards, which is perhaps
the barest minimum bar to enable
[computing freedom](https://www.gnu.org/philosophy/free-sw.html.en).
Additionally, I will no longer purchase products from Apple until they
show a clear commitment to a free and healthy commons for users.
