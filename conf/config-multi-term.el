;; (install-elisp "http://www.emacswiki.org/emacs/download/multi-term.el")
(when (require 'multi-term nil t)
  (setq multi-term-program "/bin/bash"))
