# Install dependencies for basic install
sudo apt update && sudo apt install ripgrep cmake python3

# Remove existing artefacts
rm -rf ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.viminfo

# Clone repository (idiot! its already cloned!!)
# git clone https://github.com/aayustark007/dotfiles.git

# Copy vimrc
cp ~/dotfiles/vim/.vimrc ~/.vimrc

# Setup vim plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
vim -c ':PlugInstall | quit | quit'

# Configure YouCompleteMe
python3 ~/.vim/plugged/YouCompleteMe/install.py

# Done!
echo "DONE!"

