;;; whitespace-mode --- summary
;;; commentary:
;;; 特殊文字に関する表示設定
;;; code:

(require 'whitespace)
;;特殊文字を表示させる
(global-whitespace-mode t)

;; スペースの定義は全角スペースとする(やっぱしない)
(setq whitespace-trailing-regexp  "\\([ \u00A0]+\\)$")
(setq whitespace-space-regexp "\\(^ +\\| +$\\)")
;; (setq whitespace-space-regexp "\\( \\)")



;;(setq whitespace-2Bspace-regexp "\\(\u3000+\\)")
(defvar my/bg-color "#232323")

(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         ;empty          ; 先頭/末尾の空行
                         spaces         ; 空白
                         space-mark     ; 表示のマッピング
                         tab-mark       ;
                         )
      )

;;     asdfasdf    あsdふぁsdふぁ   asdfasdfあdsふぁsdf  asdfas
;; aasf


(setq whitespace-display-mappings
       ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (2Bspace-mark ?\u3000 [?\u2423])
        ;; (newline-mark 10 [182 10]) ; 10 LINE FEED
        (newline-mark 10 [182]) ; 10 LINE FEED
        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))

;;具体的な設定
;; (set-face-foreground 'whitespace-space "white40")
;; (set-face-bold-p 'whitespace-space t)
;; (set-face-underline  'whitespace-space t)
;; (set-face-foreground 'whitespace-newline  "gray28")        ;;改行文字の色
;;(set-face-background 'whitespace-newline "gray28")



;;; 03_whitespace.el ends here
