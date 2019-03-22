sudo apt-get install zsh -yy
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"
cp odin.zsh-theme ~/.oh-my-zsh/themes/
cp zshrc ~/.zshrc
source ~/.zshrc
