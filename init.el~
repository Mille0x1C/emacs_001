;;; init.el --- the initial setting of my emacs
;;; commentary:
;;; code:


 (require 'package)
;; (add-to-list 'package-load-list '(auto-complete nil))
(package-initialize) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") )
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") )

;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (package-initialize)


;; (set-language-environment "Japanese")
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (setq default-buffer-file-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)


(require 'init-loader "~/.emacs.d/elpa/init-loader-0.2/init-loader.el")
;; init.elに記述しているのは，「init-loader」 で 「inits ファイル群」を読み込む設定のみです (init-loader-x は init-loader の改造版)．
;; init.elには，init-loaderでinitsファイル群を読み込む設定のみ書き込む
;;（init-loader-xはinit-loaderの改良版）
;;; load-pathの設定
(add-to-list 'load-path "/Users/freedom/.emacs.d/loadpath")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/elpa")


(init-loader-load "~/.emacs.d/inits")


(define-key global-map [?￥] [?\\])
(define-key global-map [?\¥] [?\\])
(define-key global-map [?\C-¥] [?\C-\\])
(define-key global-map [?\M-¥] [?\M-\\])
(define-key global-map [?\C-\M-¥] [?\C-\M-\\])


(set-face-attribute 'default nil :family "Menlo" :height 120)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "Hiragino Kaku Gothic ProN"))
(add-to-list 'face-font-rescale-alist
             '(".*Hiragino Kaku Gothic ProN.*" . 1.2))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-globals-to-save
   (quote
    (desktop-missing-file-warning tags-file-name tags-table-list search-ring regexp-search-ring register-alist file-name-history kill-ring)))
 '(desktop-save-mode t)
 '(elpy-syntax-check-command "/Users/freedom/.emacs.d/elpy/rpc-venv/bin/flake8")
 '(irony-additional-clang-options (quote ("-std=c++11")))
 '(mac-command-modifier (quote super))
 '(mac-option-modifier
   (quote
    (:ordinary meta :function meta :mouse alt :button 2)))
 '(package-selected-packages
   (quote
    (hydra persistent-scratch lsp-haskell lsp-ui lsp-mode ztree use-package popwin w3 yatex visual-regexp-steroids virtualenvwrapper virtualenv undo-tree tuareg tabbar rtags restart-emacs rainbow-mode powerline perspective pcre2el org-plus-contrib org omni-scratch multi-eshell modern-cpp-font-lock jedi-core init-loader helm-perspeen flycheck-irony flycheck-clang-analyzer find-file-in-project exec-path-from-shell ensime elscreen elpy company-irony cmake-ide cedit cdlatex browse-kill-ring+ auto-install auctex apel 2048-game 0xc))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "OliveDrab4"))))
 '(org-meta-line ((t (:inherit font-lock-comment-face :foreground "medium spring green"))))
 '(whitespace-empty ((t (:foreground "gray20" :underline t))))
 '(whitespace-space ((t (:foreground "gray20"))))
 '(whitespace-tab ((t (:foreground "darkgray"))))
 '(whitespace-trailing ((t (:foreground "gray20" :weight bold)))))

(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)


;;; init.el ends here
