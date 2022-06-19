SHELL := bash

check:
	@echo "Checking for errors and warnings..."
	# TODO Display warning if keychain binary not installed

install-chezmoi:
	@echo "Installing chezmoi..."
	bash ./scripts/install_chezmoi.sh
