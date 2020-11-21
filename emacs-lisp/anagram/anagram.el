;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'seq)

(defun anagrams-for (word list)
  (let ((word-chars-sorted
       (sort (split-string (downcase word) "") 'string-lessp)))
    (seq-filter
     (lambda (w)
       (and
        (not (equal w word))
        (equal
         (sort (split-string (downcase w) "") 'string-lessp)
         word-chars-sorted)))
     list)))

(provide 'anagrams-for)
;;; anagram.el ends here
