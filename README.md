gitolite.vim
============

Description
-----------

[Vim][] Syntax highlight for [gitolite][] configuration file `gitolite.conf`.

Released versions can be found in [vim.org script page][script_page].

Installation
------------

Download a released Vimball (`gitolite.vba.gz`) from [github][github_downloads]
or [vim.org][script_page], open it in Vim and call `:source %s`.

You can also create and/or install the Vimball from the source by calling:

	# create the Vimball
	make
	# create and install it
	make install-vba

Third option is to install the files directly:

	# to $HOME/.vim
	make install
	# or systemwide
	sudo make vimdir=/etc/vim install

Copyright
---------

Copyright (c) 2010 Teemu Matilainen <teemu.matilainen@iki.fi>

License: [Apache 2](http://www.apache.org/licenses/LICENSE-2.0)

[Vim]: http://www.vim.org/
[gitolite]: http://github.com/sitaramc/gitolite
[script_page]: http://www.vim.org/scripts/script.php?script_id=2900
[github_downloads]: http://github.com/tmatilai/gitolite.vim/downloads
