all: aliasrc
	@$(MAKE) -C awesome -f awesome.mk
	@$(MAKE) -C lf -f lf.mk
	@$(MAKE) -C nvim -f nvim.mk
	@$(MAKE) -C rofi -f rofi.mk
	@$(MAKE) -C zathura -f zathura.mk
aliasrc: ~/.config/aliasrc
	@cp ~/.config/aliasrc aliasrc
