(setq make-backup-files nil)
(setq auto-save-default nil)

;; theme
(load-theme 'misterioso t)

;; shell
;;(exec-path-from-shell-initialize t)

;; helm
(global-set-key (kbd "C-c h") 'helm-mini)

;; hlinum
;;(require 'hlinum)
;;(hlinum-activate)

;; linum
(global-linum-mode t)

;;package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)



;; flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)
;;(define-key global-map "\M-n" 'flycheck-next-error)
;;(define-key global-map "\M-p" 'flycheck-previous-error)

;; autocomplete
(require 'auto-complete-config)
(ac-config-default)


;; Haskell
;;; ghc-mod
(add-to-list 'exec-path (concat (getenv "HOME") "/.cabal/bin"))
(add-to-list 'load-path "~/.cabal/share/ghc-mod-4.0.1")
(add-to-list 'ac-sources 'ac-source-ghc-mod)
;;; hook
(add-hook 'haskell-mode-hook
	  (lambda ()
	    (require 'ghc)
	    (setq haskell-font-lock-symbols t)
	    (turn-on-haskell-indent)
	    ))


;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)

;; undotree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-redo)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode t)
(custom-set-faces '(rainbow-delimiters-depth-l-face ((t (:foreground "#7f8c8d")))))

(provide 'init)

;;; init.el ends here
>>>>>>> 1f443da818ebf22443486556cf2c6f8982f39b7d
