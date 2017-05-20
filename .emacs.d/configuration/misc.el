
(defun configuration/move-line-up ()
  "Move the current line up by one step"
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun configuration/move-line-down ()
  "Move the current line down by one step"
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(defun configuration/eval-and-replace ()
  "Replace expression to the left with it's value in the current buffer"
  (interactive)
  (backward-kill-sexp)
  (prin1 (eval (read (current-kill 0)))
	 (current-buffer)))

(defun configuration/apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(defun configuration/reload-current-file ()
  "Reloads the file loaded in current buffer from the disk"
  (interactive)
  (cond (buffer-file-name (progn (find-alternate-file buffer-file-name)
				 (message "File reloaded")))
	        (t (message "You're not editing a file!"))))

(defun proxy-toggle ()
  (interactive)
  (setq url-proxy-services          
        '(("no_proxy" . "^\\(localhost\\|10.*\\)")
          ("http" . "10.144.1.10:8080")
          ("https" . "10.144:1.10:8080"))))  
