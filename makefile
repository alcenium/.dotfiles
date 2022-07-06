.init.el = ./.config/init.el

all: .tmux.conf .zshrc .bashrc
.tmux.conf: ~/.tmux.conf
	cp ~/.tmux.conf .tmux.conf
.zshrc: ~/.zshrc
	cp ~/.zshrc .zshrc
.bashrc: ~/.bashrc
	cp ~/.bashrc .bashrc
