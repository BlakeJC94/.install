sudo apt-get update

# General tools
sudo apt-get install -y \
    flatpak \
    wget \
    curl \
    git \
    tree \
    nvtop \
    bashtop \
    unzip \
    tldr \
    zathura \
    fortune \
    direnv \
    stow \
    xclip \
    unclutter-xfixes

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Python deps
sudo apt-get install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev  \
    libreadline-dev \
    libsqlite3-dev curl \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev

# LuaJIT deps
sudo apt-get install -y \
    linux-headers-$(uname -r) \
    build-essential \
    libreadline-dev

# Brew deps
sudo apt-get install -y \
    build-essential \
    procps \
    curl \
    file \
    git

# Install brew (sudo)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"  # TODO .profile

# TODO source $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh in .profile
# TODO bash /home/linuxbrew/.linuxbrew/opt/fzf/install
# TODO add set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf in vim?
# TODO [ -f ~/.fzf.bash ] && source ~/.fzf.bash in .profile
brew install \
    nvim \
    tmux \
    asdf \
    ncspot \
    aws-sso-cli \
    tealdeer \
    bat \
    git-delta \
    fd \
    go-jira \
    ripgrep \
    gh \
    fzf \
    neofetch \
    jq \
    stylua \
    pyright \
    black \
    luacheck \
    ruff \
    lua-language-server \
    bash-language-server


# flatpak
flatpak install flathub org.wezfurlong.wezterm
# TODO alias wezterm='flatpak run org.wezfurlong.wezterm'
flatpak install flathub com.slack.Slack
flatpak install flathub us.zoom.Zoom
flatpak install flathub io.mpv.Mpv

# Font
git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts ~/.nerd-fonts
pushd .nerd-fonts
git sparse-checkout add patched-fonts/JetBrainsMono
bash -c "./install.sh JetBrainsMono"
popd

ssh-keygen -t ed25519 -C "blakejamescook@gmail.com"

# asdf
source $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh
asdf plugin add python
asdf plugin add nodejs
asdf plugin add rust
asdf plugin add julia
asdf plugin add luajit https://github.com/smashedtoatoms/asdf-luaJIT.git
