;;;    sammary

(eval-after-load "flycheck"
  '(progn
     (when (locate-library "flycheck-irony")
       (flycheck-irony-setup))))

(add-to-list 'flycheck-disabled-checkers 'c/c++-clang)
(add-to-list 'flycheck-disabled-checkers 'clang-analyzer)
