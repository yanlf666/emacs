

;;字体

(which-function-mode 1)

(add-to-list 'default-frame-alist
             '(font . "Hack-15"))

;;(add-to-list 'default-frame-alist
;;             '(font . "Hack-15:weight=bold:slant=italic"))

;;(add-to-list 'default-frame-alist
;;             '(font . "Fira Code-15:weight=bold:slant=italic"))


;; 1li 0oO


;; init-base.el



;; 默认工作目录
(setq default-directory "~/y-c-msp430/" )

;;默认单窗口 且去掉欢迎窗口
(setq inhibit-startup-message t)

;;关闭烦人的出错时的提示声
(setq visible-bell t)


;;状态
;;状态栏显示行列信息
(column-number-mode t)
;;工具栏隐藏
(tool-bar-mode 0)
;;菜单栏隐藏
(menu-bar-mode 0)
;;滚动条隐藏
(scroll-bar-mode 0)

;;显示时间
(display-time-mode t)
;;时间格式
(setq display-time-24hr-format t) 
;;显示时间，星期，日期
(setq display-time-day-and-date t)

;;保存
;;15妙无动作自动保存
;;(setq-default auto-save-timeout 15)
;;100个字符间隔，自动保存
;;(setq-default auto-save-interval 100)
;;关闭自动备份
(setq make-backup-files nil)
;;关闭临时文件
(setq auto-save-default nil)

;;功能
;;括号补全
;;(electric-pair-mode t)
;;配对括号高亮
(show-paren-mode 1)
;;当前行高亮
(global-hl-line-mode 1)
;;行号
(global-linum-mode t)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)
;;光标变竖线
;;(setq-default cursor-type 'bar )

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3 scroll-conservatively 10000)
;; 文件关联
(add-to-list 'auto-mode-alist '("\\.text\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.fw\\'" . c-mode))
;;(add-to-list 'auto-mode-alist '("\\.sh\\'" . c-mode))

;;把c语言风格设置为k&r,gnu,bsd,linux,python,java,风格

;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
;;自定义模式
;;(setq my-c-style
;;  '((c-comment-only-line-offset . 8)

;;    (c-cleanup-list . (scope-operator
;;                       empty-defun-braces
;;                       defun-close-semi))))

;;(add-hook 'c-mode-common-hook
;;  (lambda () (c-add-style "my-style" my-c-style t)))

(add-hook 'c-mode-common-hook
	  '(lambda()
	     (c-set-style "BSD")))



;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
    (lambda ()
        (message "Emacs ready in %s with %d garbage collections."
            (format "%.2f seconds"
                (float-time
                    (time-subtract after-init-time before-init-time)))
        gcs-done)))



(provide 'init)


