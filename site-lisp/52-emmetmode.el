(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode) ;; CSSにも使う

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個

;; (eval-after-load "emmet-mode"
;;   '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; C-j は newline のままにしておく
;; (define-key emmet-mode-keymap (kbd "C-i") 'emmet-expand-line)
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "C-j") nil)
;;  '(define-key emmet-mode-keymap (kbd "C-i") 'emmet-expand-line))
)
