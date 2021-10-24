# .vimrc config
Only works on vim with python3 support.
To check this, run `vim --version`.
If there is a `+python3` flag then it means vim was build with python3 and this config will work.

## Installation steps for vimrc
- Ensure python3 headers are installed:
    - `sudo apt install python3.X-dev` (where X is the minor version)
- Remove existing vim artefacts
    - `rm -rf ~/.vimrc ~/.vim ~/.viminfo`
- Clone the repository:
    - `git clone https://github.com/aayustark007/dotfiles.git`
- Link Or Copy the vimrc file
    - `ln -s /full/path/to/dotfiles/vim/.vimrc ~/.vimrc`
    - OR
    - `cp dotfiles/vim/.vimrc ~/.vimrc`
- Run the following command in home to install VimPlugged plugin manager:
    - `cd ~`
    - `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- Open .vimrc file and run `:PlugInstall` to install the plugins.
- Once installation is done, close the file and navigate to `~/.vim/plugged/YouCompleteMe`
- Run install.py to install autocompleters:
    - `python3 install.py --all`
- Done!
