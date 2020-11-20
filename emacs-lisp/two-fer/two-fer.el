;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:
(defun two-fer (&optional name)
  "My two-fer function"
  (if (eq name nil)
      "One for you, one for me."
      (concat "One for " name ", one for me.")))

(provide 'two-fer)
;;; two-fer.el ends here
