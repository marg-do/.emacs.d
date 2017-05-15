;; go-fmt
(add-hook 'before-save-hook 'gofmt-before-save)

;; godef
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))


;; company-go
(require 'company-go)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))


;; copy $GOPATH to emacs
(exec-path-from-shell-copy-env "GOPATH")

