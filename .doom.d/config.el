;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Maurits van Altvorst"
      user-mail-address "mvanaltvorst@icloud.com"

      epa-file-encrypt-to user-mail-address
      epg-gpg-home-directory "~/.gnupg/"

      ;; t, relative or nil
      display-line-numbers-type t
      )

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
(after! org
  (setq +org-capture-journal-file
    (expand-file-name "journal.org" org-directory)
  )
  (setq +org-capture-notes-file
    (expand-file-name "notes.org" org-directory)
  )
  (setq +org-capture-persons-file
    (expand-file-name "persons.org" org-directory)
  )
  (add-to-list 'org-capture-templates
    '("h" "Person" entry (file +org-capture-persons-file)
"* %?
** Eigenschappen
** Houdt van
** Houdt niet van
** Tijdlijn
** Cadeautips" :jump-to-captured t)
  )
  (add-to-list 'org-modules 'org-habit t)
)

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

(setq org-startup-truncated 'nil)
