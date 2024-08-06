ln -s $(pwd)/zshrc $HOME/.zshrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ln -s $(pwd)/aliasrc $HOME/.aliasrc
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

#nvim
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

ln -s $(pwd)/nvim $HOME/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# setting up sdkman, my favorite JVM related sdk manager
curl -s "https://get.sdkman.io" | bash

# direnv, profiling sdk

# git config
git config --global core.excludesFile "$(pwd)/git-global-ignore"
