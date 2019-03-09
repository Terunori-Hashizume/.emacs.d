;; move around
(global-set-key (kbd "C-h") 'delete-backward-char)

;; mark set
(global-set-key (kbd "C-j") 'set-mark-command)

;; folding
(global-set-key (kbd "C-c /") 'hs-toggle-hiding)

;; save
(global-set-key (kbd "C-x s") 'save-buffer)
(global-set-key (kbd "C-x C-s") 'save-some-buffers)

;; load init.el
(global-set-key (kbd "<f5>") (lambda() (interactive) (load-file "~/.emacs.d/init.el")))
