;; irony
(eval-after-load "irony"
  '(progn
     (custom-set-variables '(irony-additional-clang-options '("-std=c++11")))
     (add-to-list 'company-backends 'company-irony)
     (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
     (add-hook 'c-mode-common-hook 'irony-mode)))

;; flycheck
(add-hook 'c-mode-common-hook 'flycheck-mode)
(eval-after-load "flycheck"
  '(progn
     (when (locate-library "flycheck-irony")
       (flycheck-irony-setup))))

;; open .h file in c++ mode
(setq auto-mode-alist
      (append '(("\\.h$" . c++-mode))
              auto-mode-alist))
