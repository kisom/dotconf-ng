;;;; .sbcl-repl-util.lisp
;;;; Kyle Isom <kyle@metacircular.net>
;;;;
;;;; This file contains utilities for working with the interactive
;;;; REPL I fire up with C-t C-l in stumpwm (http://www.stumpwm.org/).
;;;; It does assume that Quicklisp (http://quicklisp.org/) is
;;;; installed and that kutils (https://github.com/kisom/kutils/) are
;;;; available.
;;;;
;;;; 2015-04-06 - Start file with install.

(ql:quickload :kutils)
(ql:quickload :quickproject)
(kutils:enable-hash-table-reader)

(defun get-system-name (system)
  "Returns the name of the system."
  (cond
    ((stringp system) system)
    (t (ql-dist:name system))))

(defun target-system-p (target system)
  "Returns true if the target matches the system name."
  (equal (string-upcase (get-system-name system))
	 (kutils:mkstr target)))

(defun all-systems ()
  "Return a list of all systems, both local and global."
  (append (ql:system-list)
	  (ql:list-local-systems)))

(defvar *available-systems* (all-systems))

(defun install (&rest packages)
  "Install the packages specified using Quicklisp."
  (let ((installed '(:loaded))
	(failed    '(:failed)))
    (dolist (package packages)
      (if (find package *available-systems* :test #'target-system-p)
	  (progn
	    (ql:quickload package)
	    (push package installed))
	  (push package failed)))
    (list (reverse installed) (reverse failed))))

(defvar *lisp-home* #P"/home/kyle/quicklisp/local-projects/")
(defvar *license-body* "Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the \"Software\"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.")

(defun now ()
  (multiple-value-bind
	(second minute hour date month year day-of-week dst-p tz)
      (get-decoded-time)
    (declare (ignore day-of-week))
    (list year month date hour minute second tz dst-p)))

(defun new-project (name &key cl-prefix depends)
  (let* ((project (if cl-prefix
		      (concatenate 'string "cl-" name)
		      name))
	 (path (merge-pathnames *lisp-home* project))
	 (project (quickproject:make-project path
					     :depends-on depends
					     :author  "Kyle Isom <kyle@metacircular.net>"
					     :license "MIT License")))
    (unless (zerop (length project))
      (with-open-file (file (pathname (format nil "~A/LICENSE" path)) :direction :output)
	(with-standard-io-syntax
	  (princ (format nil "Copyright (c) ~A Kyle Isom <kyle@metacircular.net>~%~%~A~%"
			 (first (now)) *license-body*)
		 file))))))
