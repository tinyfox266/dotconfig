cd
# install git
yes | sudo apt-get install git

# install zsh
yes | sudo apt-get install zsh
yes | sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# install tmux
yes | sudo apt-get install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# vim
yes | sudo apt-get install vim
git clone https://github.com/tinyfox266/dotvim.git
mv dotvim .vim
cp .vim/.vimrc .
vim -c ":PlugClean" -c ":PlugInstall"

