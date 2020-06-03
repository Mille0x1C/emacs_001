;;; package --- sammary
;;; commentary:

;;; Code:
(require 'use-package)
(use-package org
  :ensure t
  :mode (("\\.txt$" . org-mode))
  :bind(
        ("C-c c" . org-capture)
         ("C-c l" . org-store-link)  ;; Preludeのバインドを再定義しておく
         ("C-c a" . org-agenda)
         ("C-c b" . org-iswitchb)
         ;;("C-c C-x l" . org-preview-latex-fragment) ;;edited by M.F.
        )
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
)

;; (use-package org
;;   :mode (("\\.txt$" . org-mode))
;;   )

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
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "notes.org")))

;; org-modeを起動したとき，org-cdlatex-modeを自動で起動する
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'toggle-truncate-lines)
(plist-put org-format-latex-options :scale 1.4)


;;; 02_org.el ends here
