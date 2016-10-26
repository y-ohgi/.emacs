;; ;; auto-install
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
(package-initialize)
(require 'auto-install)
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)

;; melpa.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)


