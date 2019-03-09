(defun run_test_cases ()
  (interactive)
  (setq-local run "~/kyo_pro/tools/run_test_cases.sh")
  (shell-command-to-string (concat (run " " (buffer-name)))))  

(global-set-key (kbd "C-x t c") 'run_test_cases)
