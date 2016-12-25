CURRENT_DIR=$(PWD)

cp ~/.vimrc ~/.vimrc_cp
cp ~/.zshrc ~/.zshrc_cp
cp ~/.bashrc ~/.bashrc_cp
cp ~/.gitconfig ~/.gitconfig_cp

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vi
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git

cp ${CURRENT_DIR}/vimrc ~/.vimrc
cp ${CURRENT_DIR}/zshrc ~/.zshrc
cp ${CURRENT_DIR}/bashrc ~/.bashrc
cp ${CURRENT_DIR}/ycm_extra_config.py ~/.vim/bundle/YouCompleteMe/ycm_extra_config.py
cp ${CURRENT_DIR}/gitconfig ~/.gitconfig

source ~/.vimrc
source ~/.zshrc
source ~/.bashrc
source ~/.gitconfig

if [[ "$OSTYPE" == "darwin"*  ]]; then
    # Mac OSX
    if ! type "ruby" > /dev/null; then
            brew install ruby-full
    else
        echo "ruby exists"
    fi

    if ! type "brew" > /dev/null; then
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "brew downloaded"
    fi

    if ! type "node" > /dev/null; then
            brew install node
    else
        echo "node downloaded"
    fi

    if ! type "cmake" > /dev/null; then
            brew install cmake
    else
        echo "cmake downloaded"
    fi
fi

cd ~/.vim/bundle && git clone git://github.com/nathanaelkane/vim-indent-guides.git
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

vi +PluginInstall +qall
