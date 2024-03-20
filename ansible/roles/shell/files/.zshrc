# Pure theme and prompt
# @see: https://github.com/sindresorhus/pure
if [ -d "$HOME/.zsh/pure" ]; then
    fpath+=($HOME/.zsh/pure)
fi

# Homebrew configuration
# @see: https://docs.brew.sh/Installation
if [ "$(command -v brew)" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Auto suggestions
# @see: https://github.com/zsh-users/zsh-autosuggestions
if [ -f "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Load custom dotfiles
for file in ~/.zsh_{paths,prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
