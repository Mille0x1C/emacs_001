(require 'ensime)


(setenv "PATH" (concat "PATH_TO_SBT:" (getenv "PATH")))
(setenv "PATH" (concat "PATH_TO_SCALA:" (getenv "PATH")))

(require 'scala-mode2)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


