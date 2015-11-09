;; init.el

;; utf-8
(prefer-coding-system 'utf-8)

;; cl
(require 'cl-lib)
(require 'cl)
(put 'downcase-region 'disabled nil)

;; タブ幅
;(custom-set-variables '(tab-width 4))

;; バックアップを残さない
(setq make-backup-files nil)

;; "yes or no" を "y or n"に
(fset 'yes-or-no-p 'y-or-n-p)

;; ツールバーを非表示にする
(tool-bar-mode 0)
(menu-bar-mode 0)


;; ;; auto-install
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
(package-initialize)
;; (require 'auto-install)
;; (auto-install-update-emacswiki-package-name t)
;; (auto-install-compatibility-setup)

;; ;; melpa.el
;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


;; init-loader
;環境に依存しない設定はファイル名の最初に 2 桁の数字をつける
;番号は優先度で 00 が最初に読み込まれて， 99 が最後に読み込まれる
;同じ数字を付けても良い
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/"))
(init-loader-load "~/.emacs.d/site-lisp")
; エラーが起きたファイルを特定する
(setq init-loader-show-log-after-init 'error-only)
(defun init-loader-re-load (re dir &optional sort)
  (let ((load-path (cons dir load-path)))
    (dolist (el (init-loader--re-load-files re dir sort))
      (condition-case e
	  (let ((time (car (benchmark-run (load (file-name-sans-extension el))))))
	    (init-loader-log (format "loaded %s. %s" (locate-library el) time)))
	(error
	 ;; (init-loader-error-log (error-message-string e)) ；削除
	 (init-loader-error-log (format "%s. %s" (locate-library el) (error-message-string e))) ;追加
	          )))))

;; バッファの自動再読み込み
; emacs外からファイルが編集された時に再読み込みをする
(global-auto-revert-mode 1)

; 対応する括弧のハイライト
(show-paren-mode t)

;; 大文字と小文字を区別しない
;; 検索(全般)時には大文字小文字の区別をしない
(setq case-fold-search t)
;; インクリメンタルサーチ時には大文字小文字の区別をしない
(setq isearch-case-fold-search t)

;; カーソルの点滅を消す
(blink-cursor-mode 0)


(require 'inf-php)

(setq default-tab-width 4)
