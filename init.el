;; load-pathを追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; elispとconfディレクトリをサブディレクトリごとload-pathに追加
(add-to-load-path "elisp" "conf")

;;;; 基本設定
;; キーバインド設定
(load "init-keybind")
;; 言語設定
(load "init-language")
;; ウィンドウ設定
(load "init-window")
;; バックアップ設定
(load "init-backup")
;; ディレクトリ操作設定
(load "init-dired")

;;;; 拡張機能
;; auto-install
(load "config-auto-install")
;; ruby-mode
(load "config-ruby-mode")
;; js2-mode
(load "config-js2-mode")
;; rinari
(load "config-rinari")
;; yasnippet
(load "config-yasnippet")
;; auto-complete
(load "config-auto-complete")
;; multi-term
(load "config-multi-term")

;; (auto-install-batch anything)
;; (require 'anything-startup)
