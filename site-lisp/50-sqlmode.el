;; (eval-after-load "sql"
;;   '(load-library "sql-indent"))

(eval-after-load "sql"
  '(load-library "sql-indent"))

(defun sql-mode-hooks()
  (setq sql-indent-offset 1)
  (setq indent-tabs-mode nil))

(add-hook 'sql-mode-hook 'sql-mode-hooks)
