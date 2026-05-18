SRCS  := $(wildcard src/*.md)
NAMES := $(patsubst src/%.md,%,$(SRCS))
PAGES := $(patsubst %,build/scripts/%/index.html,$(NAMES))

.PHONY: all clean

all: build/index.html build/style.css $(PAGES)

build/scripts/%/index.html: src/%.md templates/script.html
	@mkdir -p build/scripts/$*
	@if [ -f scripts/$* ]; then \
		cp scripts/$* build/scripts/$*/; \
		lang=$$(head -1 scripts/$* | grep -oE 'python3?|bash|sh|ruby|perl|node' | tail -1 | sed 's/python3/python/'); \
		{ cat $<; printf '\n\n```%s\n' "$$lang"; cat scripts/$*; printf '\n```\n'; } | \
		pandoc -o $@ -f markdown --template templates/script.html \
			--highlight-style=pygments \
			--metadata scriptfile="$*"; \
	else \
		pandoc $< -o $@ -f markdown --template templates/script.html; \
	fi

build/index.html: $(SRCS) templates/index.html build-index.py
	@mkdir -p build
	python3 build-index.py | pandoc -o $@ --template templates/index.html -f markdown

build/style.css: style.css
	cp $< $@

clean:
	rm -rf build/
