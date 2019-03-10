(package-refresh-contents)

(defvar packages-to-be-installed
  '(
    company
    company-jedi
    dash
    easy-repeat
    evil
    exec-path-from-shell
    markdown-mode
    solarized-theme
    undo-tree
    yasnippet
    yasnippet-snippets
    ))

(dolist (item packages-to-be-installed)
  (unless (package-installed-p item)
    (package-install item)))
