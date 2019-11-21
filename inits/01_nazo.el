;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(whitespace-empty ((t nil)))
;;  '(whitespace-indentation ((t nil)))
;;  '(whitespace-line ((t nil)))
;;  '(whitespace-space ((t (:background "gray100" :foreground "grey" :underline t :weight bold))))
;;  '(whitespace-space-after-tab ((t nil)))
;;  '(whitespace-space-before-tab ((t (:background "DarkOrange" :foreground "firebrick"))))
;;  '(whitespace-trailing ((t nil))))

;; (setq whitespace-style '(face tabs tab-mark spaces space-mark))
;; (setq whitespace-space-regexp "\\(\x3000+\\)")
;; (setq whitespace-display-mappings
;;       '((space-mark ?\x3000 [?\□])
;;         (tab-mark   ?\t   [?\xBB ?\t])
;;         ))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-globals-to-save
   (quote
    (desktop-missing-file-warning tags-file-name tags-table-list search-ring regexp-search-ring register-alist file-name-history kill-ring)))
 '(desktop-save-mode t)
 '(irony-additional-clang-options (quote ("-std=c++11")))
 '(package-selected-packages
   (quote
    (yatex restart-emacs tuareg yasnippet-snippets company auto-complete cedit yasnippet undo-tree multi-eshell auto-install elscreen elscreen-fr use-package rainbow-mode powerline perspective package-utils helm-perspeen company-irony browse-kill-ring+ apel))))

(setq auto-mode-alist (cons '("¥¥.ml¥¥w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(put 'dired-find-alternate-file 'disabled nil)
