

;; elpa.el

;;elpa插件包安装地址
(require 'package)

;;(add-to-list 'package-archives '("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/") t)
(setq package-archives '(
			 
			 ;;中科大
			 ;; ("gnu" .
			 ;;  "http://mirrors.ustc.edu.cn/elpa/gnu/")
                       	 ;; ("melpa" .
			 ;;  "http://mirrors.ustc.edu.cn/elpa/melpa/")			 
			 ;; ("melpa-stable" .
			 ;;  "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
			 ;; ("org" .
			 ;;  "http://mirrors.ustc.edu.cn/elpa/org/")
			 ;;清华
			 ("melpa" .
			  "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ;; ("melpa-stable" .
			 ;;  "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
			 
			 ))
(package-initialize)

;; 个别时候会出现签名校验失败
(setq package-check-signature nil) 

;; 如果列表是空的，刷性列表
(unless package-archive-contents
  (package-refresh-contents))
;; (package-install-selected-packages)

;; 没有use-package 自动安装
(unless (package-installed-p 'use-package) 
  (package-refresh-contents)
  (package-install 'use-package))

;; (when (not (package-installed-p 'use-package))
;;   (package-refresh-contents)
;;   (package-install 'use-package))

(use-package company
  :no-require t
  :ensure t
  :defer t 
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  ;; (add-to-list 'company-backends 'company-yasnippet)
  ;; (add-to-list 'company-backends 'company-dabbrev)
  ;; (add-to-list 'company-backends 'company-dabbrev-code)
  ;; (add-to-list 'company-backends 'company-etags)
  (setq company-backends
	'((
	   ;; company-tabnine
	   ;; :separate
	   company-files
	   company-keywords
	   :separate
	   company-dabbrev
	   company-yasnippet
	   company-capf 	   
	   )
	  (company-abbrev company-dabbrev)
	  ))
  (setq
   company-minimum-prefix-length 1
   ;;补全最小前缀长度
   company-show-numbers t	        
   company-idle-delay 0
   ;; nil表示取消
   company-echo-delay 0.1)
  )

(use-package company-c-headers
  :no-require t
  :ensure t
  :after (company)
  :defer t
  :init
  (add-to-list 'company-backends 'company-c-headers)
  :config
  ;; (add-to-list 'company-c-headers-path-system "/usr/include/c++/6")
  (add-to-list 'company-c-headers-path-system
	       "/home/y/y-c-msp430/msp430-gcc-9.3/msp430-elf/include/devices/"))

;; (use-package company-tabnine
;;   :no-require t
;;   :ensure t
;;   :after (company)
;;   :defer t
;;   :init
;;   (add-to-list 'company-backends #'company-tabnine)
;;   :config
;;   )

(use-package helm
  :no-require t
  :ensure t
  ;; :after (company)
  :defer t  
  :init
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  )

(use-package ggtags
  ;; M-. ggtags-find-definition,跳转到该函数
  ;; M-, ggtags-prev-mark,返回函数
  ;; M-] ggtags-find-reference, 列出所有调用该函数的地方
  :no-require t
  :ensure t
  ;; :after (company helm)
  :defer t
  :init
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
		(ggtags-mode 1))))
  )

(use-package yasnippet
  :no-require t
  :ensure t
  :defer t
  :init
  (yas-global-mode 1)
  :config
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets" 
	  
	  ;; ;; personal snippets
          ;; "/path/to/some/collection/"
	  ;; ;; foo-mode and bar-mode snippet collection
          ;; "/path/to/yasnippet/yasmate/snippets"
	  ;; ;; the yasmate collection
          ))
  )

(use-package bing-dict
  :no-require t
  :ensure t
  ;; :after (ggtags)
  :defer t  
  :init
  (global-set-key (kbd "C-c d") 'bing-dict-brief)
  )

;; ;;彩虹括号
;; (use-package rainbow-delimiters
;;  :ensure t
;;  :defer t
;;  :init
;; (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))


;; ;;符号补全
;; (use-package smartparens
;;   :ensure t
;;   :defer t
;;   :config (progn (show-smartparens-global-mode t))
;; (add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
;; (add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
;;   :init
;;   (show-smartparens-global-mode t)
;;   (smartparens-global-mode 1)
;;   (sp-with-modes '(c-mode c++-mode org-mode text-mode el-mode)   
;;     (sp-local-pair "<" ">")
;;     (sp-local-pair "{" nil :post-handlers '(("||\n[i]" "RET")))
;;     (sp-local-pair "/*" "*/" :post-handlers '((" | " "SPC")
;; 					      ("* ||\n[i]" "RET"))))
;;   )


(provide 'elpa)
