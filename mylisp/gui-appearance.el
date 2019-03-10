;; on
(show-paren-mode 1)
(transient-mark-mode 1)

;; off
(fringe-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(setq redisplay-dont-pause nil) ;; stop flicking when typing in Japanese


;; font
(set-frame-font "Ricty-18")

;; line number
(require 'linum)
(global-linum-mode 1)
(column-number-mode 1)
(setq linum-format "%3d  ")

;; title bar
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq frame-title-format "%f")

;; frame
(set-frame-size (selected-frame) 115 44)
(set-frame-parameter nil 'alpha 93)

;; mode line
(setq minor-mode-alist (list))

;; color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(setq solarized-scale-org-headlines nil)
(setq solarized-height-minus-1 1)
(setq solarized-height-plus-1 1)
(setq solarized-height-plus-2 1)
(setq solarized-height-plus-3 1)
(setq solarized-height-plus-4 1)
(load-theme 'solarized-dark t)
