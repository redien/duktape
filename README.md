Duktape
=======

[![Build Status](https://travis-ci.org/svaarala/duktape.svg?branch=master)](https://travis-ci.org/svaarala/duktape)

Introduction
------------

[Duktape](http://duktape.org/) is an **embeddable Javascript** engine,
with a focus on **portability** and **compact** footprint.

Duktape is easy to integrate into a C/C++ project: add `duktape.c`,
`duktape.h`, and `duk_config.h` to your build, and use the Duktape API
to call Ecmascript functions from C code and vice versa.

Main features:

* Embeddable, portable, compact
* Ecmascript E5/E5.1 compliant
* Khronos/ES6 TypedArray and Node.js Buffer bindings
* Built-in debugger
* Built-in regular expression engine
* Built-in Unicode support
* Minimal platform dependencies
* Combined reference counting and mark-and-sweep garbage collection with finalization
* Custom features like co-routines, built-in logging framework, and built-in
  CommonJS-based module loading framework
* Property virtualization using a subset of Ecmascript E6 Proxy object
* Bytecode dump/load for caching compiled functions
* Liberal license

See [duktape.org](http://duktape.org/) for packaged end-user downloads
and documentation.  The end user downloads are also available from the
[duktape-releases](https://github.com/svaarala/duktape-releases) repo
as both binaries and in unpacked form as git tags.  Snapshot builds from
master are available in [duktape.org/snapshots](http://duktape.org/snapshots).

Have fun!

Support
-------

* Duktape Wiki: [wiki.duktape.org](http://wiki.duktape.org)
* User community Q&A: Stack Overflow [duktape](http://stackoverflow.com/questions/tagged/duktape) tag
* Bugs and feature requests: [GitHub issues](https://github.com/svaarala/duktape/issues)
* General discussion: IRC `#duktape` on `chat.freenode.net` ([webchat](https://webchat.freenode.net))

About this repository
---------------------

This repository is **intended for Duktape developers only**, and contains
Duktape internals: test cases, internal documentation, sources for the
duktape.org web site, etc.

Current branch policy: the "master" branch is used for active development,
other branches are frequently rebased feature branches (so you should not
fork off them), and tags are used for releases.  Master is quite stable,
but may be broken from time to time so use it with care.

Getting started: end user
-------------------------

When embedding Duktape in your application you should use the packaged source
distributables available from [duktape.org/download.html](http://duktape.org/download.html).
See [duktape.org/guide.html#gettingstarted](http://duktape.org/guide.html#gettingstarted)
for the basics.

Automatically generated bleeding edge snapshots from master are available at
[duktape.org/snapshots](http://duktape.org/snapshots).

You can also clone this repository, make modifications, and build a source
distributable on Linux, OSX, and Windows using `python util/make_dist.py`.

Getting started: modifying and rebuilding the distributable
-----------------------------------------------------------

If you intend to change Duktape internals and want to rebuild the source
distributable in Linux, OSX, or Windows:

    # Linux; can often install from packages or using 'pip'
    $ sudo apt-get install python python-yaml
    $ python util/make_dist.py

    # OSX
    # Install Python 2.7.x
    $ pip install PyYAML
    $ python util/make_dist.py

    # Windows
    ; Install Python 2.7.x from python.org, and add it to PATH
    > pip install PyYAML
    > python util\make_dist.py

The source distributable directory will be in `dist/`.

For platform specific notes see http://wiki.duktape.org/DevelopmentSetup.html.

Getting started: other development (Linux only)
-----------------------------------------------

Other development stuff, such as building the website and running test cases,
is based on a `Makefile` **intended for Linux only**.  See detailed
instructions in http://wiki.duktape.org/DevelopmentSetup.html.

Versioning
----------

Duktape uses [Semantic Versioning](http://semver.org/), see
[Versioning](http://duktape.org/guide.html#versioning).

Reporting bugs
--------------

See [CONTRIBUTING.md](https://github.com/svaarala/duktape/blob/master/CONTRIBUTING.md).

Security critical Github issues (for example anything leading to a segfault)
are tagged `security`.

Contributing
------------

See [CONTRIBUTING.md](https://github.com/svaarala/duktape/blob/master/CONTRIBUTING.md).

Copyright and license
---------------------

See [AUTHORS.rst](https://github.com/svaarala/duktape/blob/master/AUTHORS.rst)
and [LICENSE.txt](https://github.com/svaarala/duktape/blob/master/LICENSE.txt).

[Duktape Wiki](https://github.com/svaarala/duktape-wiki/) is part of Duktape
documentation and under the same copyright and license.
