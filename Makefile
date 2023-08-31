

SHELL=/bin/bash

# Variables
DESTINATION ?= ""

ifeq ($(DESTINATION), "")
	dest=
else
	dest=-d $(DESTINATION)
endif

JEKYLL_ENV ?= ""
ifeq ($(JEKYLL_ENV), "")
	config=
else ifeq ($(JEKYLL_ENV), production)
	config=--config _config.yml,_production-config.yml
else
	config=$(JEKYLL_ENV)
endif

install:
	gem install bundler
	bundle install

build: install
	bundle exec jekyll build $(config) $(dest)

serve: install
	bundle exec jekyll serve $(config)

.PHONY: install build serve
