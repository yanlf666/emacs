

(use-package company 
  :config 
  (setq company-dabbrev-code-everywhere t 
        company-dabbrev-code-modes t 
        company-dabbrev-code-other-buffers 'all
	
        company-dabbrev-downcase nil 
        company-dabbrev-ignore-case t 
        company-dabbrev-other-buffers 'all
	;; 搜索所有
        company-require-match nil 
        company-minimum-prefix-length 2 
        company-show-numbers t
	
        company-tooltip-limit 20
	;; 更大弹窗
	company-tooltip-align-annotations 't
	;; 注释和右侧工具提示边框对齐
        company-idle-delay 0
	;; 减少弹窗延迟
        company-echo-delay 0 
        company-tooltip-offset-display 'scrollbar 
        company-begin-commands '(self-insert-command)
	;; 只有输入后才开始完成) 
  (push '(company-semantic :with company-yasnippet) company-backends) 
  :hook ((after-init . global-company-mode)))
