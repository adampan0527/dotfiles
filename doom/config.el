;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Adam Pan"
      user-mail-address "adampan@zju.edu.cn")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Framing Size
;; start the initial frame maximized
;; (add-hook 'window-setup-hook #'toggle-frame-maximized)
;; (add-hook 'window-setup-hook #'toggle-frame-fullscreen)

(add-to-list 'default-frame-alist '(height . 40))


(add-to-list 'default-frame-alist '(width . 100))

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentaion and more examples of what they
;; accept. For example:


;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
;; DON'T use (`font-family-list'), it's unreliable on Linux
;; org mode table

(cond
 (IS-MAC
  (setq doom-font (font-spec :family "Jetbrains Mono"   :size 19)
        doom-big-font (font-spec :family "Jetbrains Mono"  :size 36)
        doom-variable-pitch-font (font-spec :family "Overpass"  :size 23)
        ;;doom-unicode-font (font-spec :family "FZSongKeBenXiuKai-R-GBK" :weight 'light :slant 'italic :size 21)
        doom-serif-font (font-spec :family "IBM Plex Serif"  :size 23))
  (add-hook! 'after-init-hook
             :append
             (lambda ()
               ;; Emoji: 😄, 🤦, 🏴󠁧󠁢󠁳󠁣󠁴
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Apple Color Emoji" )  )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Symbola" )            )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Noto Color Emoji" )   )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Liberation Mono" )    )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Noto Sans Symbols2" ) )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Segoe UI Emoji" )     )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "FreeSerif" )         )
               (set-fontset-font "fontset-default" 'symbol (font-spec :family "Twitter Color emoji" ))
               ;; East Asia: 你好, 早晨, こんにちは, 안녕하세요
               (set-fontset-font "fontset-default" 'han      (font-spec :family "LXGW WenKai"))
               (set-fontset-font "fontset-default" 'kana     (font-spec :family "LXGW WenKai"))
               (set-fontset-font "fontset-default" 'hangul   (font-spec :family "LXGW WenKai"))
               (set-fontset-font "fontset-default" 'cjk-misc (font-spec :family "Noto Serif CJK SC"))
               ;; Cyrillic: Привет, Здравствуйте, Здраво, Здравейте
               (set-fontset-font "fontset-default" 'cyrillic (font-spec :family "Noto Serif"))
               )
  )

 )
)
