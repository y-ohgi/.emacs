; 11-magit.el
; emacsのgitクライアント

(require 'magit)
(global-set-key "\C-x\g" 'magit-status)


;; (eval-after-load 'magit
;;   '(progn
;;      (set-face-background 'magit-item-highlight "#202020")
;;      (set-face-foreground 'magit-diff-add "#40ff40")
;;      (set-face-foreground 'magit-diff-del "#ff4040")
;;           (set-face-foreground 'magit-diff-file-header "#4040ff")))

;; 背景色変更
;; (set-face-background 'magit-item-highlight "#282822") ; 選択行
;; (set-face-background 'magit-diff-add "#282822") ; 追加行
;; (set-face-background 'magit-diff-del "#282822") ; 削除行
;; (set-face-background 'magit-diff-file-header "#282822") ; Diffのファイル名部分
;; (set-face-background 'magit-diff-hunk-header "#282822") ; Diffのhunk部分
;; (set-face-background 'magit-section-title "#282822") ; 見出し部分
