;;; package --- Summary
;;; commentary:
;;; code:

;;; C-h にバックスペース/ やめたほうが良いですよ
;;;(keyboard-translate ?\C-h ?\C-?)


;;; helpはちゃんと活用したほうがいいですよ
(global-set-key (kbd "C-h") 'help)

;;;
(global-set-key (kbd "s-t") 'elscreen-find-file)



;;; tab key の挙動はちゃんと設定しときたいね
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; (global-set-key (kbd "S-n") )
;; indent-tabs-mode ;;
;; tab-width

;;; 自前プレフィックス
(global-unset-key (kbd "C-l"))
(global-set-key (kbd "C-l C-l") 'recenter-top-bottom)

;;; C-l r(R) で置換
(global-set-key (kbd "C-l R") 'vr/query-replace)
;; (global-set-key (kbd "C-l R") 'query-replace-regexp)
(global-set-key (kbd "C-l r") 'vr/replace)



;; (setq-default tab-width 4 indent-tabs-mode nil)

;; 日本語をちらつかせない！
(setq redisplay-dont-pause nil)

;;ツールバーを表示しない
(tool-bar-mode 0)

;;メニューバーを表示しない
(menu-bar-mode t)

;; 括弧の自動補完
(electric-pair-mode 1)

;; 日付挿入
(defun insert-current-time()
  (interactive)
  (insert (format-time-string "%Y-%m-%d(%a) %H:%M:%S" (current-time))))
(define-key global-map (kbd "C-c d") `insert-current-time)



;; 動的略称展開(dabbrev-expand)にキーバインドを割り当てる
(define-key global-map (kbd "C-:") 'dabbrev-expand)

;;動的略称展開(dabbrev-expand)において大文字・小文字を区別する
(setq dabbrev-case-fold-search nil)
;; goto-lineにキーバインドを割り当てる
(define-key global-map (kbd "M-j") 'goto-line)

;; replace-regexpにキーバインドを割り当てる
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z r") 'replace-regexp)

;; comment-line
(global-set-key (kbd "C-;") 'comment-line)

(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-Z") 'undo-tree-redo)
(global-set-key (kbd "s-a") 'mark-whole-buffer)

;; shellの環境変数をEmacsに引き継ぐ
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq-default default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; 初期画面を表示しない
(setq inhibit-startup-message nil)



;; タイトルパーにファイルのフルパスを表示する
(setq frame-title-format "%f")          ;;


;;キーバインド

(define-key global-map [?¥] [?\\])     ;;

;; kill-ring
(define-key global-map (kbd "s-c") 'kill-ring-save)
(define-key global-map (kbd "s-x") 'kill-region)
(define-key global-map (kbd "s-s") 'save-buffer)
(define-key global-map (kbd "s-v") 'yank)
;; beginning-of-buffer
(define-key global-map (kbd "C-,") 'beginning-of-buffer)     ;;
(unless window-system
  (global-set-key (kbd "M-n") 'beginning-of-buffer)
  )

;; end-of-buffer
(define-key global-map (kbd "C-.") 'end-of-buffer)
(unless window-system
  (global-set-key (kbd "M-m") 'end-of-buffer)
  )

;; bufferの評価
(define-key global-map (kbd "C-x C-/") 'eval-buffer)

;; 行数を表示する
(global-linum-mode t)


;; M-ESC ESC による ウィンドウの単一化を無効化
(define-key global-map (kbd "M-ESC ESC") nil)


;; 列数を表示する
(column-number-mode t)

;; 対応する括弧を光らせる
(show-paren-mode t)
(put 'upcase-region 'disabled nil)


(global-set-key (kbd "C-k") 'kill-line)

;; line_copy
(fset 'line_copy
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([67108896 5 escape 119] 0 "%d")) arg)))

(global-set-key (kbd "C-c k") 'line_copy)

;; for org mode obsolute
;;(define-key org-mode-map (kbd "tab") 'indent-for-tab-command)

;; (insert (concatenate 'string org-mode-map))
;; (type org-mode-map)


;;テーマの設定
;;(set-face-background 'default "#303030")
;;(set-foreground-color "#ffffff")
(load-theme 'deeper-blue t)
(unless window-system
  (load-theme 'manoj-dark t)
  )

;;; window-system じゃなかったとき(CLIだったとき)，CharacterCodeをjanpanaizeする
(unless window-system
  (set-default-coding-systems 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  )




;;; スクロールを一行ずつにする
(setq scroll-step 1)
(setq scroll-conservatively 1000)

(set-keyboard-coding-system nil)

;;; 00_command-keymap_and_fundamentals.el ends here
