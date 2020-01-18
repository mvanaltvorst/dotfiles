;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Maurits van Altvorst"
      user-mail-address "mvanaltvorst@icloud.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Iosevka" :size 42))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)

;; Disable "jk" as escape sequence in insert mode
(setq evil-escape-inhibit t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;;(after! erc
  ;;(erc-autojoin-channels-alist '(("#eletronics"))))

;; (use-package noflet
;;   :demand t )
;; (defun make-capture-frame ()
;;   "Create a new frame and run org-capture."
;;   (interactive)
;;   (make-frame '((name . "capture")))
;;   (select-frame-by-name "capture")
;;   (delete-other-windows)
;;   (noflet ((switch-to-buffer-other-window (buf) (switch-to-buffer buf)))
;;            (org-capture)))

(defun tl/post-capture ()
  (if (equal "org-protocol-capture" (frame-parameter nil 'name))
      (delete-frame)))

(add-hook 'org-capture-after-finalize-hook 'tl/post-capture)

;;(defun activate-capture-frame ()
  ;;"run org-capture in capture frame"
  ;;(select-frame-by-name "org-protocol-capture")
  ;;(switch-to-buffer (get-buffer-create "*scratch*"))
  ;;(org-capture))
