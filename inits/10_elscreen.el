(require 'elscreen)
(elscreen-start)
(elscreen-set-prefix-key "\C-t")



(global-set-key (kbd "s-{") 'elscreen-previous)
(global-set-key (kbd "s-}") 'elscreen-next)
(global-set-key (kbd "s-w") 'elscreen-kill)
(global-set-key (kbd "s-n") 'elscreen-create)


;;苦肉の策．早く直したい．
(global-set-key (kbd "C-t C-t") 'transpose-chars)
