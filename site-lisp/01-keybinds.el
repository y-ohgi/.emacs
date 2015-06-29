;; 01-keybinds.el

;; backspaceを割り当てる
(global-set-key "\C-h" 'delete-backward-char)

;; バッファを移動できるようにする
;(setq windmove-wrap-around t)
;(windmove-default-keybindings)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
