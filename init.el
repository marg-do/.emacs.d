;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get)
  (require 'el-get-elpa))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (irony company el-get))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; install packages
(el-get-bundle helm)
(el-get-bundle init-loader)
(el-get-bundle magit)
(el-get-bundle company)
(el-get-bundle flycheck)
(el-get-bundle undo-tree)
(el-get-bundle undohist)
(el-get-bundle multiple-cursors)
(el-get-bundle exec-path-from-shell)
(el-get-bundle powerline)
;;; c/c++
(el-get-bundle irony)
(el-get-bundle flycheck-irony)

;; init-loader
(init-loader-load "~/.emacs.d/inits/")

