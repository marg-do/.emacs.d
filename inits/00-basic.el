;; basic settings
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode 1)
(global-linum-mode t)
(setq mac-option-modifier 'meta)
(setq-default tab-width 4 indent-tabs-mode nil)
(global-whitespace-mode nil)

;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; magit
(defalias 'mgt 'magit-status)

;; theme
(load-theme 'misterioso t)

;; company
(global-company-mode 1)
(setq company-idle-delay 0)
(setq company-selection-wrap-around t)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "M-/") 'undo-tree-undo)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; exec-path-from-shell
(exec-path-from-shell-initialize)

;; powerline
(require 'powerline)
(powerline-default-theme)

;; flycheck
(when (require 'flycheck nil 'noerror)
  (custom-set-variables
   '(flycheck-display-errors-function
     (lambda (errors)
       (let ((messages (mapcar #'flycheck-error-message errors)))
         (popup-tip (mapconcat 'identity messages "\n")))))
   '(flycheck-display-errors-delay 0.5))
  (define-key flycheck-mode-map (kbd "C-M-n") 'flycheck-next-error)
  (define-key flycheck-mode-map (kbd "C-M-p") 'flycheck-previous-error))
