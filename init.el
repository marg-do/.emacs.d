;; packages to install
(defvar my/packages
  '(init-loader
    auto-complete
    ido
    powerline
    popwin
    haskell-mode
    ghc
    ))

;; init package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; install packages
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

;; load init scripts
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
