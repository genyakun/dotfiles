(setq user-emacs-directory "~/.emacs.d/")

(add-to-list 'load-path (expand-file-name "sub-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))


;;----------------------------------------------------------------------------
;; Local setting (start)
;;----------------------------------------------------------------------------
(when (file-exists-p "~/.emacs.local-start.el")
  (load "~/.emacs.local-start.el"))


;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'sub-boot)
(require 'sub-keyboard)
(require 'sub-keybind)
(require 'sub-proxy)
(require 'sub-pkg-mg)
(require 'sub-enviorment)

;;----------------------------------------------------------------------------
;; Layout config
;;----------------------------------------------------------------------------
(require 'sub-highlight)
(require 'sub-frame)
(require 'sub-window)
(require 'sub-theme)
(require 'sub-fonts)

;;----------------------------------------------------------------------------
;; Input confin
;;----------------------------------------------------------------------------
(require 'sub-anything)
(require 'sub-auto-complete)
(require 'sub-select)
(require 'sub-history)
(require 'sub-csharp)

;;----------------------------------------------------------------------------
;; Text confin
;;----------------------------------------------------------------------------
(require 'sub-indent)

;;----------------------------------------------------------------------------
;; Serce config
;;----------------------------------------------------------------------------
(require 'sub-tags)
(require 'sub-find)
(require 'sub-grep)

;;----------------------------------------------------------------------------
;; History confin
;;----------------------------------------------------------------------------
(require 'sub-git)
(require 'sub-backup)

;;----------------------------------------------------------------------------
;; Other confin
;;----------------------------------------------------------------------------
(require 'sub-org-mode)
(require 'sub-insert)
(require 'sub-markdown)


;;; TMP
;(require 'omnisharp)
;(setq omnisharp-server-executable-path
;      "/home/XXX/server/OmniSharpServer/OmniSharp/bin/Debug/OmniSharp.exe")

;;----------------------------------------------------------------------------
;; Local setting (end)
;;----------------------------------------------------------------------------
(when (file-exists-p "~/.emacs.local-end.el")
  (load "~/.emacs.local-end.el"))

