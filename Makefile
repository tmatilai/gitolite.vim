PLUGIN = gitolite

vimdir = $(HOME)/.vim

VIM = vim
INSTALL = install
RM = rm -f

VIM_FILES := $(wildcard */*.vim)

all: $(PLUGIN).vba.gz

$(PLUGIN).vba.gz: $(PLUGIN).vba
	gzip -9 < $< > $@

$(PLUGIN).vba: $(VIM_FILES)
	printf "%s\n" $^ | $(VIM) \
		-c 'let g:vimball_home="."' \
		-c '%MkVimball! $(PLUGIN)' \
		-c 'q!' -

clean:
	$(RM) $(PLUGIN).vba $(PLUGIN).vba.gz

install-vba: $(PLUGIN).vba
	$(VIM) -c 'source %' -c 'q' $<

VIM_DIRS := $(addprefix $(DESTDIR)$(vimdir)/,$(dir $(VIM_FILES)))
install:
	$(INSTALL) -d -m 755 $(VIM_DIRS)
	for f in $(VIM_FILES); do \
		$(INSTALL) -v -m 644 "$$f" "$(DESTDIR)$(vimdir)/$$f"; \
	done

dist:
	git archive --prefix='$(PLUGIN)/' HEAD | gzip -9 > $(PLUGIN).tar.gz

.PHONY: all clean install dist
