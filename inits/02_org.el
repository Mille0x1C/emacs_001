;;; package --- sammary
;;; commentary:

;;; Code:
(require 'use-package)
(use-package org                 ; use-packageマクロはとても便利なので活用したほうが良いですよ
  :ensure t
  :mode (("\\.txt$" . org-mode))
  :bind(
        ("C-c c" . org-capture)
        ("C-c l" . org-store-link)  ;; Preludeのバインドを再定義しておく
        ("C-c a" . org-agenda)
        ("C-c b" . org-iswitchb)
        ("C-c TAB". org-cycle )
        ("C-c C-,". org-cycle-agenda-files)
        ("C-c C-x l" . org-preview-latex-fragment) ;; edited by M.F. ;; 俺やんけ
        )
  )

;; ( org-cycle-agenda-files)
  :init
  ;; 保存先（もっとうまく書けたらいいのになぁ）
  (setq my-org-directory "~/Documents/org/")
  (setq my-org-agenda-directory "~/Documents/org/agenda/")
  (setq org-agenda-files (list my-org-directory my-org-agenda-directory))
  :config


  ;;edited by Mille
  (setq temporary-file-directory "~/.emacs.d/org/temp/")
  ;;temporary-file-directory
  
  ;; 基本設定
  ;; Hide the first N-1 stars in a headline : nil --> t
  (setq org-hide-leading-stars t)
  ;; RET will follow the link : nil --> t
  (setq org-return-follows-link t)
  ;; Directory with org files : "~/org" --> "~/Documents/org"
  (setq org-directory my-org-directory)
  ;; Default target for storing notes : "~/.notes" --> "captured.org"
  (setq org-default-notes-file "captured.org")
 
  ;; org-capture --> org-captureの使い方
  ;; org-agenda  --> org-agendaの使い方
  ;; ox-latex    --> ox-latexの使い方


;; (use-package org
;;   :mode (("\\.txt$" . org-mode))
;;   )

;;; org bullets の設定
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(defun show-org-buffer (file)
  "Show an org-file FILE on the current buffer."
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/ownCloud/Org/" file))))

(add-hook 'org-mode-hook (lambda () (org-indent-mode t)))


;;; my keybindings
(require 'org)
(define-key org-mode-map (kbd "C-,") nil)
(define-key org-mode-map [?\t] nil)
(define-key org-mode-map (kbd "<tab>") nil)
(define-key org-mode-map (kbd "C-c <tab>") 'org-cycle)

;;; my  Emacs設定変数 の設定
()

;; notes.org を活用するといいですよ
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "notes.org")))

;; org-modeを起動したとき，org-cdlatex-modeを自動で起動する
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
;; org-modeを起動したとき，自動で折り返し(toggle-truncate-lines)を発動
(add-hook 'org-mode-hook 'toggle-truncate-lines)


;; latex の 文字幅 の 設定 / Emacs設定変数 の設定
;; Documentation:
;; Options for << creating images >> from LaTeX fragments.
;; This is a property list with the following properties:
(plist-put org-format-latex-options :scale 1.4)


;;; 02_org.el ends here
