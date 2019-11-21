;;;init.el --- summary
;;;
;;;


(require 'package)
(add-to-list 'package-load-list '(auto-complete nil))
(package-initialize) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)


(require 'init-loader "~/.emacs.d/elpa/init-loader-0.2/init-loader.el")


;; init.elに記述しているのは，「init-loader」 で 「inits ファイル群」を読み込む設定のみです (init-loader-x は init-loader の改造版)．
;; init.el(このファイル)には，init-loaderでinitsファイル群を読み込む設定のみ書き込む
;;（init-loader-xはinit-loaderの改良版）

;;; load-pathの設定
(add-to-list 'load-path "/Users/freedom/.emacs.d/loadpath")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/elpa")


(init-loader-load "~/.emacs.d/inits")

(global-flycheck-mode 1)


(define-key global-map [?￥] [?\\])
(define-key global-map [?\¥] [?\\])
(define-key global-map [?\C-¥] [?\C-\\])
(define-key global-map [?\M-¥] [?\M-\\])
(define-key global-map [?\C-\M-¥] [?\C-\M-\\])

(require 'whitespace)
(global-whitespace-mode 1)

;;modern c++ font lock
;; (require 'modern-cpp-font-lock)
;; (modern-c++-font-lock-global-mode t)
;; (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)




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
    (omni-scratch modern-cpp-font-lock 2048-game 0xc flycheck-irony elpy flycheck-clang-analyzer ensime rtags cmake-ide virtualenvwrapper virtualenv tabbar exec-path-from-shell yatex restart-emacs tuareg yasnippet-snippets company cedit yasnippet undo-tree multi-eshell auto-install elscreen elscreen-fr use-package rainbow-mode powerline perspective package-utils helm-perspeen company-irony browse-kill-ring+ apel)))
 '(pyvenv-activate 1)
 '(tex-bibtex-command "pbibtex"))


;;custom-set-faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight bold))))
 '(whitespace-empty ((t nil)))
 '(whitespace-space ((t (:background "gray60" :underline t))))
 '(whitespace-tab ((t (:foreground "gray34" :underline t))))
 '(whitespace-trailing ((t (:foreground "gray34" :underline t)))))
