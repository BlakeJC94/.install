# Install asdf if not already installed
if [ -x $(command asdf) ]; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
    source "$HOME/.asdf/asdf.sh"
fi

# Get plugins
asdf plugin-add python
asdf plugin-add julia
asdf plugin-add nodejs
asdf plugin-add rust

# TODO figure out how to use tool-versions
# asdf install python 3.9.15
# asdf global python 3.9.15
#
# asdf install julia latest
# asdf global julia latest
#
# asdf install nodejs lts
# asdf global nodejs lts
#
# asdf install rust latest
# echo "^^^ IGNORE THAT PATH MESSAGE ^^^"
# asdf global rust latest


