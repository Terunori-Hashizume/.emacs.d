;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)
(define-key undo-tree-map (kbd "C-z") 'undo-tree-undo)
(define-key undo-tree-map (kbd "C-S-z") 'undo-tree-redo)

;; easy-repeat
(easy-repeat-mode)
(add-to-list 'easy-repeat-command-list 'previous-buffer)

;; company
(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t) ;; when going down at last option, go back to top
(setq completion-ignore-case t)
(setq company-dabbrev-downcase nil)
(define-key company-active-map (kbd "C-h") nil) ;; to enable backspace
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; company-jedi
(require 'jedi-core)
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-to-list 'company-backends 'company-jedi)

;; company-irony
(add-to-list 'company-backends 'company-irony)

;; yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(define-key yas-minor-mode-map (kbd "C-x y i") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-x y n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-x y v") 'yas-visit-snippet-file)
(yas-global-mode 1)
