;; run yatex mode when open .tex file
(setq auto-mode-alist
(cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

(setq dviprint-command-format "dvipdfmx %s")

;; yatex load path
(setq load-path (cons (expand-file-name
"/Applications/Emacs.app/Contents/Resources/site-lisp/yatex")
load-path))
;; use utf-8 on yatex mode
(setq YaTeX-kanji-code 4)

;; preview
(setq dvi2-command "open -a Preview")
(defvar YaTeX-dvi2-command-ext-alist
  '(("xdvi" . ".dvi")
    ("ghostview\\|gv" . ".ps")
    ("acroread\\|pdf\\|Preview\\|open" . ".pdf")))

;;yatexにアウトライン機能を追加
(defun latex-outline-level ()
  (interactive)
  (let ((str nil))
	(looking-at outline-regexp)
	(setq str (buffer-substring-no-properties (match-beginning 0) (match-end 0)))
	(cond ;; キーワード に 階層 を返す
	 ((string-match "documentclass" str) 1)
	 ((string-match "documentstyle" str) 1)
	 ((string-match "part" str) 2)
	 ((string-match "chapter" str) 3)
	 ((string-match "appendix" str) 3)
	 ((string-match "subsubsection" str) 6)
	 ((string-match "subsection" str) 5)
	 ((string-match "section" str) 4)
	 (t (+ 6 (length str)))
	 )))

(add-hook 'yatex-mode-hook
		  '(lambda ()
			 (setq outline-level 'latex-outline-level)
			 (make-local-variable 'outline-regexp)
			 (setq outline-regexp
				  (concat "[ \t]*\\\\\\(documentstyle\\|documentclass\\|"
				          "part\\|chapter\\|appendix\\|section\\|subsection\\|subsubsection\\)"
				          "\\*?[ \t]*[[{]"))
			 (outline-minor-mode t)))


(add-hook 'yatex-mode-hook
          (lambda ()
            (require 'latex-typeset)
            (setf *latex-program* "uplatex"               ;; the default is "platex"
                  *latex-pdf-program* "open"              ;; the default is "evince"
                  *latex-rm-ext* '(".dvi" ".log" ".aux")) ;; the default is '(".dvi")
            (local-set-key (kbd "C-c C-c") 'latex-typeset-and-preview)
            (local-set-key (kbd "C-c C-r") 'latex-typeset-and-preview-region)
            (local-set-key (kbd "C-c C-p") 'latex-preview-pdf)))
