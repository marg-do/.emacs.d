;; disable backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; package
(require 'package)
;;; for haskell-mode
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; popup
(add-to-list 'load-path "~/.emacs.d/elisp/popup-el/")
(require 'popup)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/elisp/auto-complete/")
(require 'auto-complete-config)
(ac-config-default)

;; haskell-mode
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))
;;; indent
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;; symbols
(setq haskell-font-lock-symbols t)
;;; ghc-mod
(add-to-list 'exec-path (concat (getenv "HOME") "/.cabal/bin"))
(add-to-list 'load-path "~/.cabal/share/ghc-mod-4.0.1")
;;;;(autoload 'ghc-init "ghc" nil t)
;;;;(ghc-init)
(require 'ghc)
(add-to-list 'ac-sources 'ac-source-ghc-mod)
	     
