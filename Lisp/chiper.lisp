(defun shiftChar (chr key)
    "Encrypting a char based of a following key"
    (setq k (mod key 25))
    (if (and (string<= chr "z") (string>= chr "a"))
        (if (> ( + (char-code chr) k ) (char-code #\z))
            (progn 
                (setq k ( - ( + (char-code chr) k) char-code #\z))
                (setq chr (code-char ( + (char-code #\a) k))))
            (setq chr (code-char ( + (char-code chr) k)))))
    chr)

 (defun encrypt (str key)
    "Traversing each letter and shifting it base on the key value"
    (defvar res)
    (setq res "")
    (loop for letter across str do 
         (setq res (concatenate 'string res (string (shiftChar letter key)))))
    res)

(write-line (encrypt "Hello World" 5))