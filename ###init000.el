;;elspの最低限の文法
;;関数の実行は()の中
;;  例えば(set 'a 100)
;;普通，変数はその場で評価されてしまう．評価されるのを防ぐには，「'」を変数名の前につける('val)のように．



;; packageの設定
;;(require 'package) ;; You might already have this line
;;(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
;;                    (not (gnutls-available-p))))
;;       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
;;  (add-to-list 'package-archives (cons "melpa" url) t))
;;(when (< emacs-major-version 24)
;;  ;; For important compatibility libraries like cl-lib
;;  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))




;;(setq package-archives
;;      '(("gnu" . "http://elpa.gnu.org/packages/")
;;        ("melpa" . "http://melpa.org/packages/")
;;        ("org" . "http://orgmode.org/elpa/")))





;;(require 'elscreen)
;;(elscreen-set-prefix-key "\C-t")
;;(elscreen-start)










  ;;設定1
  ;; (set-face-attribute
  ;;  'tabbar-default nil
  ;;  :family "MeiryoKe_Gothic"
  ;;  :background "#34495E"
  ;;  :foreground "#EEEEEE"
  ;;  :height 0.85
  ;;  ;; :box '(:line-width 2 :color "white")
  ;;  )
  ;; (set-face-attribute
  ;;  'tabbar-unselected nil
  ;;  :family "Meiryoke_Gothic"
  ;;  :background "black"
  ;;  :foreground "white"
  ;;  :box '(:line-width 2 :color "white")
  ;;  :box nil
  ;;  )
  ;; (set-face-attribute
  ;;  'tabbar-separator nil
  ;;  :background "gray"
  ;;  :foreground "gray"
  ;;  :box '(:line-width 2 :color "white")
  ;;  )
  ;; (set-face-attribute
  ;;  'tabbar-selected nil
  ;;  :background "#E74C3C"
  ;;  :foreground "#EEEEEE"
  ;;  :box '(:line-width 2 :color "white")
  ;;  :box nil)
  ;; (set-face-attribute
  ;;  'tabbar-button nil
  ;;  :box nil)
  ;; (set-face-attribute
  ;;  'tabbar-separator nil
  ;;  :height 2.0)
  )


;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
;; (custom-set-variables
;; (custom-set-variables
;;  '(tabbar-separator (quote (0.5))))
;; ;; adding spaces
;; (defun tabbar-buffer-tab-label (tab)
;;   "Return a label for TAB.
;; That is, a string used to represent it on the tab bar."
;;   (let ((label  (if tabbar--buffer-show-groups
;;                     (format "[%s]  " (tabbar-tab-tabset tab))
;;                   (format "%s  " (tabbar-tab-value tab)))))
;;     ;; Unless the tab bar auto scrolls to keep the selected tab
;;     ;; visible, shorten the tab label to keep as many tabs as possible
;;     ;; in the visible area of the tab bar.
;;     (if tabbar-auto-scroll-flag
;;         label
;;       (tabbar-shorten
;;        label (max 1 (/ (window-width)
;;                        (length (tabbar-view
;; (tabbar-current-tabset)))))))))






;; 改行コードを表示する
;;(setq eol-mnemonic-dos "(CRLF)")
;;(setq eol-mnemonic-mac "(CR)")
;;(setq eol-mnemonic-unix "(LF)")

;良くわからないcamlモード．謎
;; (setq auto-mode-alist
;; (cons '("\\.ml[iylp]?$" . caml-mode) auto-mode-alist))
;; (autoload 'caml-mode "caml" "Major mode for editing Caml code." t)
;; (autoload 'run-caml "inf-caml" "Run an inferior Caml process." t)
;;(if window-system (require 'caml-font))
;;(setq inferior-caml-program "/usr/local/bin/ocaml")













;;----------------------------------

;; (require 'yasnippet)
;; (yas-global-mode)
;; (eval-after-load "yasnippet"
;;   '(progn
;;      ;; companyと競合するのでyasnippetのフィールド移動は "C-i" のみにする
;;      (define-key yas-keymap (kbd "<tab>") nil)
;;      (yas-global-mode 1)))














