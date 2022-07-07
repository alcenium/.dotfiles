all: .tmux.conf .zshrc .bashrc
	@$(MAKE) -C .emacs.d -f emacs.mk
	@$(MAKE) -C .config -f config.mk
.tmux.conf: ~/.tmux.conf
	@cp ~/.tmux.conf .tmux.conf
.zshrc: ~/.zshrc
	@cp ~/.zshrc .zshrc
.bashrc: ~/.bashrc
	@cp ~/.bashrc .bashrc
