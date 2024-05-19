ln -s $(pwd)/zshrc $HOME/.zshrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ln -s $(pwd)/aliasrc $HOME/.aliasrc

#nvim 
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
ln -s $(pwd)/nvim $HOME/.config/nvim

# setting up sdkman, my favorite JVM related sdk manager
curl -s "https://get.sdkman.io" | bash

# direnv, profiling sdk

# git config
git config --global core.excludesFile "$(pwd)/git-global-ignore"
git config --global user.name "Phuc Nguyen"
git config --global user.email "phucnn.work@gmail.com"



