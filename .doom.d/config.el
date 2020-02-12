;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Maurits van Altvorst"
      user-mail-address "mvanaltvorst@icloud.com"

      epa-file-encrypt-to user-mail-address
      epg-gpg-home-directory "~/.gnupg/")


;; themes
(setq doom-font (font-spec :family "Iosevka" :size 21)
      doom-theme 'doom-nord-light)

;; org
(setq org-directory "~/org/"
      org-agenda-files "~/org/"
      org-habit-show-all-today t
      org-startup-truncated 'nil

      org-pretty-entities t
      org-hide-emphasis-markers t)

;; deft
(setq deft-directory "~/org/"
      deft-extensions '("org"))


;; misc
(setq display-line-numbers-type t
      evil-escape-inhibit t)

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
