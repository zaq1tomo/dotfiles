brew-install:
	sh ./scripts/brew-install.sh
.PHONY: brew-install

# copy scripts for prompt of git
git-script:
	cp ./scripts/git-completion.bash ~/.git-completion.bash; \
	cp ./scripts/git-prompt.sh ~/.git-prompt.sh;
.PHONY: git-script
