;; 50-php.el

(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
; laravel用
(add-to-list 'auto-mode-alist '("\\.blade.php$" . web-mode))

(add-hook 'php-mode-hook
	  (lambda ()
	    (require 'php-completion)
	    (php-completion-mode t)
	    (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
	    (when (require 'auto-complete nil t)
	      (make-variable-buffer-local 'ac-sources)
	      (add-to-list 'ac-sources 'ac-source-php-completion)
	      (auto-complete-mode t))))
;; (add-hook 'php-mode-hook
;; 	  (lambda ()
;; 	    (c-set-offset 'case-label' 4)
;; 	    (c-set-offset 'arglist-intro' 4)
;; 	    (c-set-offset 'arglist-cont-nonempty' 4)
;; 	    (c-set-offset 'arglist-close' 0)))
;; (add-hook 'php-mode-user-hook
;; 	  '(lambda ()
;; 	     (setq tab-width 4)
;; 	     (setq c-basic-offset 4)
;; 	     (setq indent-tabs-mode nil)))
;; (add-hook 'php-mode-hook
;; 		  '(lambda()
;; 			 (setq tab-width 4)
;; 			 (setq indent-tabs-mode t)
;; 			 (setq c-basic-offset 4)
;; 			 ))
(setq php-mode-force-pear t)

(add-hook 'php-mode-hook (lambda ()
			   (defun ywb-php-lineup-arglist-intro (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (+ (current-column) c-basic-offset))))
			   (defun ywb-php-lineup-arglist-close (langelem)
			     (save-excursion
			       (goto-char (cdr langelem))
			       (vector (current-column))))
			   (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
			   (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))
