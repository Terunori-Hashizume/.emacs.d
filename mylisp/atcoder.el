(defun run-test-cases ()
  (interactive)
  (setq-local run "python3 ~/code_puzzle/test/run_test_cases.py")
  (shell-command (concat run " " (expand-file-name (buffer-name)))))  

(defun set-test-cases (url)
  (interactive "sProblem url: ")  
  (setq-local set "python3 ~/code_puzzle/test/set_test_cases.py")
  (shell-command (concat set " " url)))

(global-set-key (kbd "C-x t r") 'run-test-cases)
(global-set-key (kbd "C-x t s") 'set-test-cases)
