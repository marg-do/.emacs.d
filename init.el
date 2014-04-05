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


;; haskell-mode
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))
;;; indent
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;; symbols
(setq haskell-font-lock-symbols t)
