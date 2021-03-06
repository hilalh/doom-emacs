;; -*- lexical-binding: t; no-byte-compile: t; -*-
;;; lang/java/doctor.el

(assert! (or (not (featurep! +lsp))
             (featurep! :tools lsp))
         "This module requires (:tools lsp)")

(unless (executable-find "javac")
  (warn! "Couldn't find the javac executable, are you sure the JDK is installed?"))
