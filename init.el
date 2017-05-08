;; packages to install
(defvar my/packages
  '(init-loader
    helm
    magit
    exec-path-from-shell
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
 '(package-selected-packages (quote (exec-path-from-shell magit init-loader helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
