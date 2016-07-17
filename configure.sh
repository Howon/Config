CURRENT_DIR=$(PWD)
echo $CURRENT_DIR
cp ~/.vimrc ~/.vimrc_cp

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git

cp ${CURRENT_DIR}/vimrc ~/.vimrc
