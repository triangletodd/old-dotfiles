#  ▙▗▌   ▌     ▗▀▖▗▜
#  ▌▘▌▝▀▖▌▗▘▞▀▖▐  ▄▐ ▞▀▖
#  ▌ ▌▞▀▌▛▚ ▛▀ ▜▀ ▐▐ ▛▀
#  ▘ ▘▝▀▘▘ ▘▝▀▘▐  ▀▘▘▝▀▘

PKGS := $(patsubst %/,%,$(wildcard */))
STOW_PKGS := $(PKGS:%=stow-%)
RESTOW_PKGS := $(PKGS:%=restow-%)
DELETE_PKGS := $(PKGS:%=delete-%)
DRY_STOW_PKGS := $(STOW_PKGS:%=dry-%)
DRY_RESTOW_PKGS := $(RESTOW_PKGS:%=dry-%)
DRY_DELETE_PKGS := $(DELETE_PKGS:%=dry-%)

SHELL := /usr/bin/env bash
STOW := stow
TARGET := $(HOME)
OPTS := --target $(TARGET) --verbose

.PHONY: dry-stow dry-restow dry-delete
dry-stow : $(DRY_STOW_PKGS)
dry-restow : $(DRY_RESTOW_PKGS)
dry-delete : $(DRY_DELETE_PKGS)

.PHONY: stow restow delete
stow : $(STOW_PKGS)
restow : $(RESTOW_PKGS)
delete : $(DELETE_PKGS)

.PHONY: $(PKGS)
$(PKGS) :
	$(MAKE) "stow-$(@)"

.PHONY: $(DRY_STOW_PKGS) $(DRY_RESTOW_PKGS) $(DRY_DELETE_PKGS)
$(DRY_STOW_PKGS) : OPTS += --stow --simulate
$(DRY_STOW_PKGS) :
	$(STOW) $(OPTS) $(@:dry-stow-%=%)
$(DRY_RESTOW_PKGS) : OPTS += --restow --simulate
$(DRY_RESTOW_PKGS) :
	$(STOW) $(OPTS) $(@:dry-restow-%=%)
$(DRY_DELETE_PKGS) : OPTS += --delete --simulate
$(DRY_DELETE_PKGS) :
	$(STOW) $(OPTS) $(@:dry-delete-%=%)

.PHONY: $(STOW_PKGS) $(RESTOW_PKGS) $(DELETE_PKGS)
$(STOW_PKGS) : OPTS += --stow
$(STOW_PKGS) :
	$(STOW) $(OPTS) $(@:stow-%=%)
$(RESTOW_PKGS) : OPTS += --restow
$(RESTOW_PKGS) :
	$(STOW) $(OPTS) $(@:restow-%=%)
$(DELETE_PKGS) : OPTS += --delete
$(DELETE_PKGS) :
	$(STOW) $(OPTS) $(@:delete-%=%)
