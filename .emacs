;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("9478cc5ff9f7de4608dfadead68ae7151aaf1966caea1c31743e3ba898fa8609" "6ffef0161169e444b514a0f7f0cb7eac09d11c396cdc99bf85360a361c427886" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" "f10137adcc66747ed67e14de1e08ba9e3fdd21ac6f006b2bc052cabd9392ce60" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(custom-theme-load-path
   (quote
    ("/home/bbarg/.emacs.d/elpa/color-theme-solarized-20160219.924/" "/home/bbarg/.emacs.d/elpa/termbright-theme-20151030.1935/" "/home/bbarg/.emacs.d/elpa/smart-mode-line-20160506.747/" "/home/bbard/.emacs.d/themes/" custom-theme-directory t)) t)
 '(fci-rule-character 9474)
 '(fci-rule-color "color-240")
 '(frame-background-mode (quote light))
 '(org-emphasis-alist
   (quote
    (("*" bold)
     ("/" italic)
     ("_" underline)
     ("=" org-verbatim verbatim)
     ("`" org-code verbatim)
     ("+"
      (:strike-through t)))))
 '(org-hide-emphasis-markers t)
 '(org-highlight-latex-and-related (quote (latex entities)))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-pretty-entities t)
 '(org-pretty-entities-include-sub-superscripts nil)
 '(org-src-fontify-natively t)
 '(package-selected-packages
   (quote
    (sml-mode fireplace company-irony company-irony-c-headers ggtags flycheck-rtags rtags browse-kill-ring cmake-mode magit yaml-mode tern-auto-complete termbright-theme sqlup-mode sql-indent smart-tab smart-mode-line simpleclip ruby-test-mode puppet-mode protobuf-mode php-mode markdown-mode lua-mode llvm-mode json-mode jinja2-mode highlight-chars go-mode git-blame format-sql flycheck-irony color-theme-zenburn color-theme-solarized clang-format buffer-move apt-utils ag)))
 '(reb-re-syntax (quote string))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(bold ((t (:weight bold))))
 '(diff-added ((t (:inherit diff-changed :foreground "green"))))
 '(diff-changed-face ((t nil)) t)
 '(diff-file-header ((t (:inherit diff-header :weight bold))))
 '(diff-header ((t (:foreground "purple"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
 '(diff-removed-face ((t (:inherit diff-changed))) t)
 '(flycheck-error ((t (:background "Red3" :underline (:color "Red1" :style wave)))))
 '(fringe ((t (:background "black"))))
 '(hc-tab ((t (:background "red"))))
 '(hl-line ((t (:background "color-237"))))
 '(magit-section-highlight ((t (:background "color-238"))))
 '(markdown-header-delimiter-face ((t (:inherit markdown-markup-face :height 1.0))) t)
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 2.0))) t)
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.5))) t)
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.2))) t)
 '(mode-line ((t (:inverse-video nil :box (:line-width 1 :style released-button)))))
 '(org-block-begin-line ((t (:inherit org-meta-line))) t)
 '(org-block-end-line ((t (:inherit org-meta-line))) t)
 '(org-code ((t (:inherit shadow :foreground "magenta3"))) t)
 '(org-level-1 ((t (:inherit outline-1 :height 2.0))) t)
 '(org-level-2 ((t (:inherit outline-2 :height 1.5))) t)
 '(org-level-3 ((t (:inherit outline-3 :height 1.3))) t)
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))) t)
 '(secondary-selection ((t (:background "#1a1a3a"))))
 '(show-paren-match ((t (:background "green3"))))
 '(smerge-markers ((t (:background "color-237"))))
 '(smerge-mine ((t (:background "color-124"))))
 '(smerge-other ((t (:background "color-22"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "color-28"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "color-52"))))
 '(vc-annotate-face-CCCCFF ((t (:background "#CCCCFF" :foreground "black"))) t)
 '(vc-annotate-face-CCFFDE ((t (:background "#CCFFDE" :foreground "black"))) t)
 '(vc-annotate-face-FFCCCC ((t (:background "#FFCCCC" :foreground "black"))) t)
 '(vc-annotate-face-FFF0CC ((t (:background "#FFF0CC" :foreground "black"))) t)
 '(vc-annotate-face-FFFCCC ((t (:background "#FFFCCC" :foreground "black"))) t)
 '(vertical-border ((t (:inherit default :foreground "black")))))

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
(require 'smart-tab)
(smart-tab-mode 1)
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(require 'mouse)
(if (not window-system)
    (xterm-mouse-mode t))
(defun track-mouse (e))
(require 'fill-column-indicator)
(require 'smart-mode-line)
(sml/setup)

;; disable backup
(setq backup-inhibited t)

;; disable auto save
(setq auto-save-default nil)

;; enable recent files mode.
(recentf-mode t)
 
; 50 files ought to be enough.
(setq recentf-max-saved-items 50)
 
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

;; Commands
(global-set-key (kbd "C-c C-e") 'eval-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x t") 'org-time-stamp)
(global-set-key (kbd "C-c b") 'revert-buffer)
(global-set-key (kbd "C-c f") 'find-tag)
(global-set-key (kbd "C-c C-u t") 'untabify)

(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>") 'windmove-up)
(global-set-key (kbd "s-<down>") 'windmove-down)
(global-set-key (kbd "s-<left>") 'windmove-left)

(global-set-key (kbd "C-c a p") 'ag-project)

;; Resize windows like a master
(global-set-key (kbd "C-M-p") 'enlarge-window)
(global-set-key (kbd "C-M-n") 'shrink-window)
(global-set-key (kbd "C-M-f") 'enlarge-window-horizontally)
(global-set-key (kbd "C-M-b") 'shrink-window-horizontally)

;; compile commands
(defun in-directory (dir)
  "Runs execute-extended-command with default-directory set to the given
directory."
  (interactive "DIn directory: ")
  (let ((default-directory dir))
    (call-interactively 'execute-extended-command)))
(global-set-key (kbd "M-X") 'in-directory)

;; set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))
(transparency 90)

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

(defun inside ()
  (interactive)
  (load-theme 'misterioso t))
(defun outside ()
  (interactive)
  (load-theme 'wheatgrass t))
(inside)

(defun reformat-js-file ()
  (interactive)
  (mark-whole-buffer)
  (whitespace-cleanup-region)
  (mark-whole-buffer)
  (untabify))

;; Cursor color
(add-to-list 'default-frame-alist '(cursor-color . "#ffd700"))
(set-cursor-color "#ffd700")

;; autocompletion (company)
(setq tab-always-indent 'company-complete)
(add-to-list 'completion-styles 'initials t)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; c-mode customization
(add-hook 'c-mode-hook 'my-c-mode-hook)
(defun my-c-mode-hook ()
  (which-function-mode 1)
  (ggtags-mode 1)
  (linum-mode 1)
  (hl-line-mode 1)
  (local-set-key (kbd "C-c C") 'compile)
  (hs-minor-mode 1)
  (irony-mode 1)
  (company-mode 1)
  (flycheck-mode 1)
  (smart-tab-mode 1)
  (setq c-backslash-max-column 80))

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; cmake-mode
(add-hook 'cmake-mode-hook 'my-cmake-mode-hook)
(defun my-cmake-mode-hook ()
  (smart-tab-mode 1)
  (linum-mode 1))

;; sql-mode customization
(add-hook 'sql-mode-hook ; add '\' as an escape character
	  (lambda () (modify-syntax-entry ?\\ "." sql-mode-syntax-table)))

;; ternjs setup
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

;; js-mode customization
(add-hook 'js-mode-hook 'my-js-mode-hook)
(defun my-js-mode-hook ()
  (which-function-mode 1)
  (hl-line-mode 1)
  (hs-minor-mode 1)
  (linum-mode 1)
  (smart-tab-mode 1)
  (set-variable 'js-indent-level 2)
  (tern-mode 1)
  (auto-complete-mode 1))

;; json-mode (editing bpgen specs)
(add-hook 'json-mode-hook 'my-json-mode-hook)
(defun my-json-mode-hook ()
  (set-variable 'js-indent-level 8))

;; org mode customization
(add-hook 'org-mode-hook 'my-org-mode-hook)
(defun my-org-mode-hook ()
  (auto-fill-mode 1))

;; markdown-mode customization
(add-hook 'markdown-mode-hook 'my-markdown-mode-hook)
(defun my-markdown-mode-hook ()
  (auto-fill-mode 1))

;; lisp customization
(add-hook 'lisp-mode-hook 'my-lisp-mode-hook)
(defun my-lisp-mode-hook () (paredit-mode +1))

; auctex hack
(require 'starttls)
(setq starttls-extra-arguments '("--tofu"))

; latex debugging
(setq LaTeX-command-style '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)")))

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

; c comments in c++ mode
(add-hook 'c++-mode-hook
          (lambda () (setq comment-start "/* " comment-end " */")))

;; naked emacs
(blink-cursor-mode 0)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq visible-bell t)
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

(define-minor-mode hidden-mode-line-mode
  "Minor mode to hide the mode-line in the current buffer."
  :init-value nil
  :global nil
  :variable hidden-mode-line-mode
  :group 'editing-basics
  (if hidden-mode-line-mode
      (setq hide-mode-line mode-line-format
            mode-line-format nil)
    (setq mode-line-format hide-mode-line
          hide-mode-line nil))
  (force-mode-line-update)
  ;; Apparently force-mode-line-update is not always enough to
  ;; redisplay the mode-line
  (redraw-display)
  (when (and (called-interactively-p 'interactive)
             hidden-mode-line-mode)
    (run-with-idle-timer
     0 nil 'message
     (concat "Hidden Mode Line Mode enabled.  "
             "Use M-x hidden-mode-line-mode to make the mode-line appear."))))

;; gs not set for some reason
(setq preview-gs-command "/usr/local/bin/gs")

;; add texlive bin to path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2013/bin/x86_64-darwin/"))

;; other stuff is in /usr/local/bin
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

;; org agenda and todo list setup
(global-set-key (kbd "C-c C-j t") 'org-todo-list)
(global-set-key (kbd "C-c C-j a") 'org-agenda-list)

;; tabs management
(setq-default indent-tabs-mode nil)

(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (file-exists-p (buffer-file-name)) (not (buffer-modified-p)))
	(revert-buffer t t t) ))))

(setq tramp-auto-save-directory "~/.tramp-autosave/")

(setq-default indent-tabs-mode t
              tab-width        8
              comment-style    'indent
              require-final-newline      'ask
              mode-require-final-newline 'ask
              ispell-program-name "aspell")
