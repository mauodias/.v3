DOTFILESDIR=$HOME/dotfiles
REPO=https://github.com/mauodias/.v3.git

create_environment() {
    echo
    echo - Creating environment
    echo
    mkdir -p $DOTFILESDIR
    git clone $REPO $DOTFILESDIR
    cd $DOTFILESDIR
}

init() {
    echo Initializing dotfiles configuration...
    create_environment
    make
}

init
