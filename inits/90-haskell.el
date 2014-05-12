(require 'ghc)

(autoload 'ghc-init "ghc" nil t)

(add-hook 'haskell-mode-hook
          (lambda ()
            (turn-on-haskell-indentation)
            (turn-on-haskell-decl-scan)
            (ghc-init)))

(define-key haskell-mode-map "\C-ce" 'ghc-display-errors)
(define-key haskell-mode-map "\C-cd" 'ghc-display-document)
