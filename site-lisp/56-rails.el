;; erb
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))

;; slim mode
(require 'slim-mode)

;; projectile-rails
(require 'projectile)
(projectile-global-mode)
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
