(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(ispell-dictionary nil)
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Enable vim mode
(require 'evil)
(evil-mode 1)

;; Disable unnecessary bars
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Disable backup and auto save
(setq make-backup-files nil)
; Disable backup
(setq backup-inhibited t)
; Disable autosave
(setq auto-save-default nil)
