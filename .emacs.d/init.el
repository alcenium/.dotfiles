(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(company-backends
   '(company-bbdb company-semantic company-cmake company-capf company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(wheatgrass))
 '(ispell-dictionary nil)
 '(mode-line-format
   '("%e" " " mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
     (vc-mode vc-mode)
     "  " mode-line-modes mode-line-misc-info mode-line-end-spaces))
 '(package-selected-packages
   '(rust-mode use-package which-key general yasnippet company evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;========Configs=========
(require 'package)
;; Disable unnecessary bars
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Disable backup and auto save
(setq make-backup-files nil)
; Disable backup
(setq backup-inhibited t)
; Disable autosave
(setq auto-save-default nil)

;; Relative line number!
(global-linum-mode)
(setq display-line-numbers 'relative)

;; Org mode
(setq org-ellipsis " ▼")
(set-face-underline 'org-ellipsis nil)
;=========================

;==========Packages========
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-list '(
		     ;; Utilities
		     company ; autocomplete
		     yasnippet ; snippet
		     use-package ; package manager
		     general ; better keybind
		     ;; Visual
		     which-key
		     ;; Modes
		     evil
		     rust-mode
		     ))
(package-initialize)

(setq package-enable-at-startup nil)
(require 'use-package)

;; Keybindings
(use-package general
  :config
  (general-define-key
   :states '(normal motion visual)
   :keymaps 'override
   :prefix "SPC"
   
   "," '(find-file :which-key "find-file")
   "SPC" '(execute-extended-command :which-key "M-x")
   
   "x" '(nil :which-key "Utilities")
   "xf" '(find-file :which-key "find-file")
   "xs" '(save-buffer :which-key "save file")
   "xk" '(kill-buffer :which-key "kill buffer")
   "xB" '(list-buffers :which-key "list buffers")
   "xo" '(other-window :which-key "switch window")
   "xe" '(eval-last-sexp :which-key "eval elips code")
   "xb" '(switch-to-buffer :which-key "switch buffer")
   "xc" '(save-buffers-kill-terminal :which-key "save and quit")
   
   "h" '(nil :which-key "Help")
   "hk" '(describe-key :which-key "key")
   "hm" '(describe-mode :which-key "mode")
   "hh" '(help-for-help :which-key "general help")
   "hb" '(describe-bindings :which-key "bindings")
   "hf" '(describe-function :which-key "function")
   "hv" '(describe-variable :which-key "variable")
   "hw" '(where-is :which-key "find keybind of function")
   
   "w" '(nil :which-key "Window")
   "wo" '(other-window :which-key "switch window")
   "w1" '(delete-other-windows :which-key "evil only")
   "x0" '(delete-window :which-key "delete this window")
   "w2" '(split-window-vertically :which-key "split down")
   "w3" '(split-window-horizontally :which-key "split right")
   "wk" '(evil-window-up :which-key "focus up")
   "wj" '(evil-window-down :which-key "focus down")
   "wh" '(evil-window-left :which-key "focus left")
   "wl" '(evil-window-right :which-key "focus right")
   "wK" '(evil-window-move-very-top :which-key "move up")
   "wH" '(evil-window-move-far-left :which-key "move left")
   "wL" '(evil-window-move-far-right :which-key "move right")
   "wJ" '(evil-window-move-very-bottom :which-key "move down")
   
   "b" '(nil :which-key "Buffer")
   "bl" '(next-buffer :which-key "next")
   "bk" '(kill-buffer :which-key "kill")
   "bB" '(list-buffers :which-key "list")
   "bb" '(switch-to-buffer :which-key "switch")
   "bh" '(previous-buffer :which-key "previous")
   ))

;; Enable vim mode
(use-package evil
  :config
  (evil-mode 1))

;; Yasnippet
(use-package yasnippet
  :config
  (yas-global-mode 1))

;; Company-mode
(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :general
  (general-define-key
   :keymaps 'company-active-map
   "C-j" 'company-select-next
   "C-k" 'company-select-previous))

;; Enable which-key
(use-package which-key
  :init
  (require 'which-key)
  (setq which-key-popup-type 'side-window)
  (setq which-key-side-window-location 'left)
  (setq which-key-idle-delay 0.7)
  :config
  (which-key-mode))
;========================
