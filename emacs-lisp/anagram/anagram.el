;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'seq)

(defun anagrams-for (word list)
  (seq-filter
   (lambda (w)
     (and
      (not (equal w word))
      (equal
       (sort (split-string (downcase w) "") 'string-lessp)
       (sort (split-string (downcase word) "") 'string-lessp))))
   list))

(provide 'anagrams-for)
;;; anagram.el ends here
