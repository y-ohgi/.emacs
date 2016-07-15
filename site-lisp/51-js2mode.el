;; 51-js2mode.el

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)


;; good bye semicolon
(setq js2-strict-missing-semi-warning nil)
(setq js2-missing-semi-one-line-override t)

;; 
(setq-default indent-tabs-mode nil)


;; jsx
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))
;;(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
(add-hook 'js2-jsx-mode-hook 'flycheck-mode)

;; ;; ac-js2.el
;; (add-hook 'js2-mode-hook 'ac-js2-mode)

;; ;; auto-complete
;; (add-hook 'js2-mode-hook
;; 	  '(lambda ()
;; 	     (add-to-list 'ac-dictionary-files "~/.emacs.d/elisp/el-get/auto-complete/dict/js2-mode")
;; 	     ))




;; (depends-on "tern")
;; (depends-on "tern-auto-complete")
;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (tern-mode t)))

;; (eval-after-load 'tern
;;   '(progn
;;      (require 'tern-auto-complete)
;;      (tern-ac-setup)))

;; (add-hook 'js2-mode-hook
;;           '(lambda ()
;;              (when (locate-library "tern")
;;                (setq tern-command '("tern" "--no-port-file")) ;; .term-port を作らない
;;                (tern-mode t)
;;                (eval-after-load 'tern
;;                  '(progn
;;                     (require 'tern-auto-complete)
;;                     (tern-ac-setup)))
;;                )))

(require 'tern)
(require 'tern-auto-complete)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))
