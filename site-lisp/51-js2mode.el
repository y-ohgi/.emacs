;; 51-js2mode.el

(autoload 'js2-mode "js2-mode" nil t)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)

;; ac-js2.el
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; auto-complete
(add-hook 'js2-mode-hook
	  '(lambda ()
	     (add-to-list 'ac-dictionary-files "~/.emacs.d/elisp/el-get/auto-complete/dict/js2-mode")
	     ))

;;(add-to-list 'auto-mode-alist '("\\.js$" . ac-js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
;;(add-to-list 'auto-mode-alist '("\\.js$" . auto-complete-mode))

;; jsx-mode
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

;; good bye semicolon
(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override t)
