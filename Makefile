SHELL := bash

CHEZMOI=~/.local/bin/chezmoi
ANSI=@source scripts/ansi && ansi

check:
	@echo "Checking for errors and warnings..."
	# TODO Display warning if keychain binary not installed

install-chezmoi:
	@echo "Installing chezmoi..."
	bash ./scripts/install_chezmoi.sh

chezmoi-init:
	@echo "Initializing chezmoi..."
	$(CHEZMOI) init -S ${CURDIR} -v

chezmoi-apply:
	@echo "Applying chezmoi.."
	$(CHEZMOI) apply --verbose --keep-going
