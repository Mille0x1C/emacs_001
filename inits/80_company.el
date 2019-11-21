;;company mode
(require 'company)
(global-company-mode) ; 全バッファで有効にする
;;(setq company-idle-delay 0) ; デフォルトは0.5
(setq company-minimum-prefix-length 1) ; デフォルトは4
(setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る



(with-eval-after-load 'company
      (setq company-auto-expand t) ;; 1個目を自動的に補完
      (setq company-transformers '(company-sort-by-backend-importance)) ;; ソート順
      (setq company-idle-delay 0) ; 遅延なしにすぐ表示
      (setq company-minimum-prefix-length 1) ; デフォルトは4
      (setq company-selection-wrap-around t) ; 候補の最後の次は先頭に戻る
      (setq completion-ignore-case t)
      (setq company-dabbrev-downcase nil)
      (global-set-key (kbd "C-M-i") 'company-complete)
      ;; C-n, C-pで補完候補を次/前の候補を選択
      (define-key company-active-map (kbd "C-n") 'company-select-next)
      (define-key company-active-map (kbd "C-p") 'company-select-previous)
      (define-key company-active-map [tab] 'company-complete-selection) ;; TABで候補を設定
      (define-key company-active-map (kbd "C-h") nil) ;; C-hはバックスペース割当のため無効化
      (define-key company-active-map (kbd "C-S-h") 'company-show-doc-buffer) ;; ドキュメント表示はC-Shift-h

      ;; 未選択項目
      (set-face-attribute 'company-tooltip nil
                  :foreground "#36c6b0" :background "#244f36")
      ;; 未選択項目&一致文字
      (set-face-attribute 'company-tooltip-common nil
                    :foreground "white" :background "#244f36")
      ;; 選択項目
      (set-face-attribute 'company-tooltip-selection nil
                  :foreground "#a1ffcd" :background "#007771")
      ;; 選択項目&一致文字
      (set-face-attribute 'company-tooltip-common-selection nil
                    :foreground "white" :background "#007771")
      ;; スクロールバー
      (set-face-attribute 'company-scrollbar-fg nil
                  :background "#4cd0c1")
      ;; スクロールバー背景
      (set-face-attribute 'company-scrollbar-bg nil
                  :background "#002b37")
      )

;; (require 'jedi-core)
;; (setq jedi:complete-on-dot t)
;; (setq jedi:use-shortcuts t)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-to-list 'company-backends 'company-jedi) ; backendに追加
