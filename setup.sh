cd
# install zsh
yes | sudo apt-get install zsh
yes | sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install tmux
yes | sudo apt-get install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local 

# vim
yes | sudo apt-get install vim
https://github.com/tinyfox266/dotvim.git
mv dotvim .vim
cp .vim/.vimrc .
vim -c "PlugInstall"

