;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; other package repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; load paths
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/manual-packages/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Minor Modes
(require 'ido)
(ido-mode 1)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(setq recentf-max-saved-items 50)

(require 'smart-tab)
(smart-tab-mode 1)

(require 'mouse)
(if (not window-system)
    (xterm-mouse-mode t))
(defun track-mouse (e))

(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'dark)
(sml/setup)
(load-theme 'misterioso t)

(setq backup-inhibited t)
(setq auto-save-default nil)
 
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

;; Commands
(global-set-key (kbd "C-x t") 'org-time-stamp)
(global-set-key (kbd "C-c b") 'revert-buffer)

;; Resize windows like a master
(global-set-key (kbd "C-M-p") 'enlarge-window)
(global-set-key (kbd "C-M-n") 'shrink-window)
(global-set-key (kbd "C-M-f") 'enlarge-window-horizontally)
(global-set-key (kbd "C-M-b") 'shrink-window-horizontally)

;; show parentheses
(show-paren-mode 1)
(defadvice show-paren-function
    (after show-matching-paren-offscreen activate)
  "If the matching paren is offscreen, show the matching line in the
        echo area. Has no effect if the character before point is not of
        the syntax class ')'."
  (interactive)
  (let* ((cb (char-before (point)))
	 (matching-text (and cb
			     (char-equal (char-syntax cb) ?\) )
			     (blink-matching-open))))
    (when matching-text (message matching-text))))

;; Set symbol for the border
(set-display-table-slot standard-display-table
                        'vertical-border 
                        (make-glyph-code ?┃))

;; Cursor color
(add-to-list 'default-frame-alist '(cursor-color . "#ffd700"))
(set-cursor-color "#ffd700")

;; org mode customization
(add-hook 'org-mode-hook 'my-org-mode-hook)
(defun my-org-mode-hook ()
  (auto-fill-mode 1))

;; markdown-mode customization
(add-hook 'markdown-mode-hook 'my-markdown-mode-hook)
(defun my-markdown-mode-hook ()
  (auto-fill-mode 1))

; font size
(defun font-big ()
 (interactive)
 (set-face-attribute 'default nil :height 
  (+ (face-attribute 'default :height) 10)))

(defun font-small ()
 (interactive)
 (set-face-attribute 'default nil :height 
  (- (face-attribute 'default :height) 10)))

(global-set-key (kbd "<C-wheel-down>") 'font-small)
(global-set-key (kbd "<C-wheel-up>") 'font-big)
(global-set-key (kbd "s--") 'font-small)
(global-set-key (kbd "s-+") 'font-big)

;; naked emacs
(blink-cursor-mode 0)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "ben")
(if window-system
    (scroll-bar-mode 0))
(if window-system
    (tool-bar-mode 0))
(menu-bar-mode 0)
(setq initial-frame-alist
      '((menu-bar-lines . 0)
	(tool-bar-lines . 0)))
(setq default-cursor-type 'box)

(defvar-local hidden-mode-line-mode nil)
(defvar-local hide-mode-line nil)

;; tabs management
(setq-default indent-tabs-mode nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (smart-mode-line-dark)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "color-253" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(vertical-border ((t (:inherit mode-line-inactive :background "black")))))
