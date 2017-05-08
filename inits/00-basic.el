;; basic settings
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode 1)
(global-linum-mode t)
(setq mac-option-modifier 'meta)
(setq default-tab-width 4)
(setq-default tab-width 4 indent-tabs-mode nil)
(scroll-bar-mode 0)
(electric-pair-mode t)

;; font-size
(set-face-attribute 'default nil :height 120)

;; theme
(load-theme 'misterioso t)

