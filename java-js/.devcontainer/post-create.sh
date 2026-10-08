#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.bash-git-prompt/.git" ]; then
	git clone --depth 1 https://github.com/magicmonty/bash-git-prompt "$HOME/.bash-git-prompt"
fi

if ! grep -Fqx 'source "$HOME/.bash-git-prompt/gitprompt.sh"' "$HOME/.bashrc"; then
    printf '\nGIT_PROMPT_ONLY_IN_REPO=1' >> "$HOME/.bashrc"
	printf '\nsource "$HOME/.bash-git-prompt/gitprompt.sh"\n' >> "$HOME/.bashrc"
fi

sudo chown -R vscode:vscode /home/vscode/.pi
