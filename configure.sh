CURRENT_DIR=$(PWD)

cp ~/.vimrc ~/.vimrc_cp
cp ~/.zshrc ~/.zshrc_cp
cp ~/.gitconfig ~/.gitconfig_cp

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git

cp ${CURRENT_DIR}/vimrc ~/.vimrc
cp ${CURRENT_DIR}/zshrc ~/.zshrc
cp ${CURRENT_DIR}/gitconfig ~/.gitconfig
