# Makefile for ansible molecule: install Python3 virtual environment
#
# force the shell used to be bash in case for some commands we want to use
# set -o pipefail ex:
#    set -o pipefail ; SOMECOMMAND 2>&1 | tee $(LOG_FILE)
SHELL := /bin/bash

.DEFAULT_GOAL:=help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

update-config: ## Upgrade everything
	@cd files/grml-config; ../../grml-config.sh

clean:  ## Clean virtualenv
	rm -rf venv

install: pre-install run  ## Install everything you need

pre-install:
	python3 -m venv venv
	source venv/bin/activate; \
	pip install pip setuptools wheel --upgrade; \
	pip install -r requirements.txt; \
	pip install -r requirements.txt --upgrade

upgrade: ## Upgrade everything
	source venv/bin/activate; \
	pip install -r requirements.txt; \
	pip install -r requirements.txt --upgrade

run: ## Quick How-To
	@echo "Execute:"
	@echo "source venv/bin/activate"
	@echo
	@echo "Run test sequence commands:"
	@echo "molecule create"
	@echo "molecule list"
	@echo "molecule converge"
	@echo "molecule login"
	@echo "molecule destroy"
	@echo
	@echo "Run a full test sequence:"
	@echo "molecule test"
	@echo
	@echo "Read: https://ansible.readthedocs.io/projects/molecule/getting-started/"
