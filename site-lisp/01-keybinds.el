;; 01-keybinds.el

;; backspaceを割り当てる
(global-set-key "\C-h" 'delete-backward-char)

;; M-<bs>を割り当てる
;(global-set-key "\C-\M-h" 'backward-kill-word)
(global-set-key "\M-h" 'backward-kill-word)


;; バッファを移動できるようにする
;(setq windmove-wrap-around t)
;(windmove-default-keybindings)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; 改行
(global-set-key "\C-m" 'newline-and-indent)

;; help無効化
					;(global-unset-key (kbd"C-x C-h"))
(global-set-key (kbd "C-x C-h") 'nil)

;; 日本語モード無効
(global-set-key (kbd "C-\\") 'nil)
