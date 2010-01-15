gitolite.vim
============

Description
-----------

[Vim][] Syntax highlight for [gitolite][] configuration file `gitolite.conf`.

Installation
------------

Create a Vimball:

	make

Install the Vimball (`gitolite.vba.gz`) by opening it in [Vim][] and calling
`:source %s`, or by using Makefile:

	make install-vba

It is also possible to install the files directly:

	make install

Or systemwide:

	sudo make vimdir=/etc/vim install

Copyright
---------

Copyright (c) 2010 Teemu Matilainen <teemu.matilainen@iki.fi>

License: [Apache 2](http://www.apache.org/licenses/LICENSE-2.0)

[Vim]: http://www.vim.org/
[gitolite]: http://github.com/sitaramc/gitolite
