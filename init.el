;; packages to install

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar my/packages
  '(init-loader
    helm
    magit
    exec-path-from-shell
    company
    flycheck
    yaml-mode
    guru-mode
    rainbow-delimiters
    smartparens

    ;; rust
    rust-mode
    
    ;; js
    js2-mode

    ;; web
    sass-mode
    pug-mode

    ;; dockerfile
    dockerfile-mode
    
    ;; helm
    helm-ls-git

    ;; python
    jedi-core
    company-jedi

    ;; go
    go-mode

    ;; markdown
    markdown-mode

    ;; typescript
    typescript-mode
    tide
    )
  "")

;; add melpa repo
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-rust racer rust-mode smartparens rainbow-delimiters tide typescript-mode sass-mode js2-mode pug-mode dockerfile-mode guru-mode helm-ls-git yaml-mode markdown-mode company-go go-mode go flycheck company-jedi company exec-path-from-shell magit init-loader helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
