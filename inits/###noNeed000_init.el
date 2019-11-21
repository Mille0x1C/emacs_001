;;; dwim 用の入力関数
;;; - リージョンが指定されていないときはミニバッファから入力を求める
;;; - 指定されているときはリージョンの文字列を得る
;;; - ミニバッファの入力のデフォルト値は現在位置のシンボル(単語)
(defun region-or-prompt (prompt)
  (if (region-active-p)
      (prog1
          (buffer-substring (region-beginning) (region-end))
        (deactivate-mark)
        (message ""))
    (read-string (format "%s (default:%s): " prompt (thing-at-point 'symbol))
                 nil nil (thing-at-point 'symbol))))

;;; 前置引数で動作を変える関数作成用
;;; (auto-install-from-url "https://github.com/tm8st/emacs-prefix-arg-commands/raw/master/prefix-arg-commands.el")
(require 'prefix-arg-commands)


;; use-package
(require 'use-package)
