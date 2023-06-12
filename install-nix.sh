sudo apt-get update

# General tools
sudo apt-get install -y \
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
    unclutter-xfixes \
    gcc \
    flatpak

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

# TODO firefox ppa
# TODO nix install
# TODO nix channel

# nixgl
# nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update
# nix-env -iA nixgl.auto.nixGLDefault   # or replace `nixGLDefault` with your desired wrapper

nix-env -iA nixpkgs.neovim
nix-env -iA nixpkgs.tmux
nix-env -iA nixpkgs.ncspot  # LC_ALL=C.UTF-8
nix-env -iA nixpkgs.aws-sso-cli
nix-env -iA nixpkgs.bat
nix-env -iA nixpkgs.delta
nix-env -iA nixpkgs.fd
nix-env -iA nixpkgs.ripgrep
nix-env -iA nixpkgs.gh
nix-env -iA nixpkgs.fzf
nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.neofetch
nix-env -iA nixpkgs.jetbrains-mono
nix-env -iA nixpkgs.asdf-vm

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.wezfurlong.wezterm
# TODO alias wezterm='flatpak run org.wezfurlong.wezterm'
flatpak install flathub com.slack.Slack
flatpak install flathub us.zoom.Zoom
flatpak install flathub io.mpv.Mpv


# asdf
asdf plugin add python
asdf plugin add nodejs
asdf plugin add rust
asdf plugin add julia
asdf plugin add luajit https://github.com/smashedtoatoms/asdf-luaJIT.git
# TODO after dots: asdf install

# TODO Install versions from toolchain?
