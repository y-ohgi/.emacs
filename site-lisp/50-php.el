;; 50-php.el

(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-hook 'php-mode-hook
	  (lambda ()
	    (require 'php-completion)
	    (php-completion-mode t)
	    (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
	    (when (require 'auto-complete nil t)
	      (make-variable-buffer-local 'ac-sources)
	      (add-to-list 'ac-sources 'ac-source-php-completion)
	                   (auto-complete-mode t))))
