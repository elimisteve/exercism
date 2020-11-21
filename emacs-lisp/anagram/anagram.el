;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'seq)

(defun sort-str (word)
  (sort (split-string (downcase word) "") 'string-lessp))

(defun anagrams-for (word list)
  (let ((word-chars-sorted (sort-str word)))
    (seq-filter
     (lambda (w)
       (and
        (not (equal w word))
        (equal
         (sort-str w)
         word-chars-sorted)))
     list)))

(provide 'anagrams-for)
;;; anagram.el ends here
