# Setup for YCM in neovim

Basically, follow the instructions here and meet the requirement given by the online installation guide:

**********************************
How to use vim's built-in plugins:

    Clone the plugin as an optional package

git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe

    Build the extension (per README.md instructions)

pushd ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
./install.py --all
popd

    Add the following line to your vimrc:

packadd YouCompleteMe

To Update:

    Pull latest, update submodules, and rebuild

pushd ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
git pull
git submodule update --init --recursive
./install.py --all
popd

Alternatively you can use any other package manager.
**********************************

This will, however, place the plugin files in the ~/.vim/pack directory, where neovim can't find them, so you'll need to symlink them to ~/.config/nvim.

