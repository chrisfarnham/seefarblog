

SHELL=/bin/bash

# Variables
DESTINATION ?= ""

ifeq ($(DESTINATION), "")
	dest=
else
	dest=-d $(DESTINATION)
endif

ENVIRONMENT ?= ""
ifeq ($(ENVIRONMENT), "")
	config=
else ifeq ($(ENVIRONMENT), production)
	config=--config _config.yml,_production-config.yml
else
	config=$(ENVIRONMENT)
endif

install:
	gem install bundler
	bundle install

build: install
	bundle exec jekyll build $(config) $(dest)

serve: install
	bundle exec jekyll serve $(config)

.PHONY: install bulid serve
