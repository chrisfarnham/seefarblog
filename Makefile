

SHELL=/bin/bash

# Variables
DESTINATION ?= ""

ifeq ($(DESTINATION), "")
	dest=
else
	dest=-d $(DESTINATION)
endif

install:
	gem install bundler
	bundle install

build: install
	bundle exec jekyll build $(dest)

serve: install
	bundle exec jekyll serve

.PHONY: install bulid serve
