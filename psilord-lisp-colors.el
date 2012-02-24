;;; psilord-lisp-colors.el --- Enchanced font faces in lisp mode

;;; Commentary:
;;
;; All the hard work done by Peter Keller:
;;
;; http://pages.cs.wisc.edu/~psilord/blog/28.html  "Coloring Inside the Lines"
;; April 21, 2010 9:40 PM CDT by psilord in category Lisp
;;
;; Original comments and remarks are mostly preserved.
;;
;; Published under the Modified BSD License.
;; 
;; Maintained by Orivej Desh <orivej@gmx.fr>

;;; Code:

(defgroup lisp-faces nil "Faces used in lisp mode."
  :group 'lisp
  :group 'faces)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set up a color theme that is good enough for now.
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (when (require 'color-theme nil 'noerror)
;;   (color-theme-comidia))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set up some highlighting rules for all known ANSI common lisp functions and
;; macro names, special operators, etc. This assumes color-theme-comidia.
;; This is always tinkerable....
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defface ansi-lisp-boolean
  '((t (:foreground "white")))
  "Color all of the ANSI Common Lisp Booleans this specific color")

(defface ansi-lisp-constant
  '((t (:foreground "orchid1")))
  "Color all of the ANSI Common Lisp Constants this specific color")

(defface ansi-lisp-declaration
  '((t (:foreground "indianred2")))
  "Color all of the ANSI Common Lisp Declarations this specific color")

(defface ansi-lisp-condition-type
  '((t (:foreground "indianred2")))
  "Color all of the ANSI Common Lisp Condition Types this specific color")

(defface ansi-lisp-function
  '((t (:foreground "pale green")))
  "Color all of the ANSI Common Lisp Functions this specific color")

(defface ansi-lisp-generic-function
  '((t (:foreground "cyan"))) ; same as the comida color-theme which I use.
  "Color all of the ANSI Common Lisp Generic Functions this specific color")

(defface ansi-lisp-macro
  '((t (:foreground "cyan"))) ; same as comida color-theme which I use.
  "Color all of the ANSI Common Lisp Macros this specific color")

(defface ansi-lisp-special-operator
  '((t (:foreground "cyan"))) ; same as macros and as the comida color-theme.
  "Color all of the ANSI Common Lisp Special Operators this specific color")

(defface ansi-lisp-type
  '((t (:foreground "red")))
  "Color all of the ANSI Common Lisp Types this specific color")

(defface ansi-lisp-unknown
  '((t (:foreground "red")))
  "Color all of the ANSI Common Lisp  this specific color")

(defface ansi-lisp-global-variable
  '((t (:foreground "yellow2")))
  "Color all of the ANSI Common Lisp Globals this specific color")

(defface ansi-lisp-expression
  '((t (:foreground "indianred1")))
  "Color all of the ANSI Common Lisp Expressions (like declare) this specific color")

(defface ansi-lisp-parenthesis
;  '((t (:foreground "#4d4d3d")))  ; grey25, but with more yellow in it
  '((t (:foreground "#797969")))
  "Color all of the ANSI Common Lisp Parenthesis")

(defface ansi-lisp-number
  '((t (:foreground "orchid1")))
  "Color all of the ANSI Common Lisp Numbers")

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Known symbols to highlight follow
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar ansi-lisp-boolean
  '(nil t))

(defvar ansi-lisp-constant
  '(array-dimension-limit
    array-rank-limit array-total-size-limit boole-1 boole-2 boole-and
    boole-andc1 boole-andc2 boole-c1 boole-c2 boole-clr boole-eqv
    boole-ior boole-nand boole-nor boole-orc1 boole-orc2 boole-set
    boole-xor call-arguments-limit char-code-limit
    double-float-epsilon double-float-negative-epsilon
    internal-time-units-per-second lambda-list-keywords
    lambda-parameters-limit least-negative-double-float
    least-negative-long-float least-negative-normalized-double-float
    least-negative-normalized-long-float
    least-negative-normalized-short-float
    least-negative-normalized-single-float least-negative-short-float
    least-negative-single-float least-positive-double-float
    least-positive-long-float least-positive-normalized-double-float
    least-positive-normalized-long-float
    least-positive-normalized-short-float
    least-positive-normalized-single-float least-positive-short-float
    least-positive-single-float long-float-epsilon
    long-float-negative-epsilon most-negative-double-float
    most-negative-fixnum most-negative-long-float
    most-negative-short-float most-negative-single-float
    most-positive-double-float most-positive-fixnum
    most-positive-long-float most-positive-short-float
    most-positive-single-float multiple-values-limit pi
    short-float-epsilon short-float-negative-epsilon
    single-float-epsilon single-float-negative-epsilon))

(defvar ansi-lisp-declaration
  '(type
    compilation-speed debug declaration dynamic-extent ftype ignorable
    ignore inline notinline optimize safety space special speed))

(defvar ansi-lisp-condition-type
  '(arithmetic-error
    cell-error condition control-error division-by-zero end-of-file
    file-error floating-point-inexact floating-point-invalid-operation
    floating-point-overflow floating-point-underflow package-error
    parse-error print-not-readable program-error reader-error
    serious-condition simple-condition simple-error simple-type-error
    simple-warning storage-condition stream-error style-warning
    type-error unbound-slot unbound-variable undefined-function
    warning))

(defvar ansi-lisp-function
  '(-
    / * + abort and atom bit character complex cons continue eql error
    float list logical-pathname member mod muffle-warning not null
    pathname rational store-value string use-value values vector /= 1-
    1+ < <= = > >= abs acons acos acosh adjoin adjust-array
    adjustable-array-p alpha-char-p alphanumericp append apply apropos
    apropos-list aref arithmetic-error-operands
    arithmetic-error-operation array-dimension array-dimensions
    array-displacement array-element-type array-has-fill-pointer-p
    array-in-bounds-p array-rank array-row-major-index
    array-total-size arrayp ash asin asinh assoc assoc-if assoc-if-not
    atan atanh bit-and bit-andc1 bit-andc2 bit-eqv bit-ior bit-nand
    bit-nor bit-not bit-orc1 bit-orc2 bit-vector-p bit-xor boole
    both-case-p boundp break broadcast-stream-streams butlast byte
    byte-position byte-size caaaar caaadr caaar caadar caaddr caadr
    caar cadaar cadadr cadar caddar cadddr caddr cadr call-next-method
    car cdaaar cdaadr cdaar cdadar cdaddr cdadr cdar cddaar cddadr
    cddar cdddar cddddr cdddr cddr cdr ceiling cell-error-name cerror
    char char-code char-downcase char-equal char-greaterp char-int
    char-lessp char-name char-not-equal char-not-greaterp
    char-not-lessp char-upcase char/= char< char<= char= char> char>=
    characterp cis class-of clear-input clear-output close clrhash
    code-char coerce compile compile-file compile-file-pathname
    compiled-function-p compiler-macro compiler-macro-function
    complement complexp compute-restarts concatenate
    concatenated-stream-streams conjugate consp constantly constantp
    copy-alist copy-list copy-pprint-dispatch copy-readtable copy-seq
    copy-structure copy-symbol copy-tree cos cosh count count-if
    count-if-not decode-float decode-universal-time delete
    delete-duplicates delete-file delete-if delete-if-not
    delete-package denominator deposit-field describe describe-object
    digit-char digit-char-p directory directory-namestring disassemble
    documentation dpb dribble echo-stream-input-stream
    echo-stream-output-stream ed eighth elt encode-universal-time endp
    enough-namestring ensure-directories-exist ensure-generic-function
    eq equal equalp eval evenp every exp export expt fboundp fceiling
    fdefinition ffloor fifth file-author file-error-pathname
    file-length file-namestring file-position file-string-length
    file-write-date fill fill-pointer find find-all-symbols find-class
    find-if find-if-not find-package find-restart find-symbol
    finish-output first float-digits float-precision float-radix
    float-sign floatp floor fmakunbound force-output format fourth
    fresh-line fround ftruncate funcall function-lambda-expression
    functionp gcd gensym gentemp get get-decoded-time
    get-dispatch-macro-character get-internal-real-time
    get-internal-run-time get-macro-character get-output-stream-string
    get-properties get-setf-expansion get-universal-time getf gethash
    graphic-char-p hash-table-count hash-table-p
    hash-table-rehash-size hash-table-rehash-threshold hash-table-size
    hash-table-test host-namestring identity imagpart import
    input-stream-p inspect integer-decode-float integer-length
    integerp interactive-stream-p intern intersection
    invalid-method-error invoke-debugger invoke-restart
    invoke-restart-interactively isqrt keywordp last lcm ldb ldb-test
    ldiff length lisp-implementation-type lisp-implementation-version
    list-all-packages list-length list* listen listp load
    load-logical-pathname-translations log logand logandc1 logandc2
    logbitp logcount logeqv logical-pathname-translations logior
    lognand lognor lognot logorc1 logorc2 logtest logxor
    long-site-name lower-case-p machine-instance machine-type
    machine-version macro-function macroexpand macroexpand-1
    make-array make-broadcast-stream make-concatenated-stream
    make-condition make-dispatch-macro-character make-echo-stream
    make-hash-table make-list make-load-form-saving-slots make-package
    make-pathname make-random-state make-sequence make-string
    make-string-input-stream make-string-output-stream make-symbol
    make-synonym-stream make-two-way-stream makunbound map map-into
    mapc mapcan mapcar mapcon maphash mapl maplist mask-field max
    member-if member-if-not merge merge-pathnames
    method-combination-error min minusp mismatch name-char namestring
    nbutlast nconc next-method-p nintersection ninth notany notevery
    nreconc nreverse nset-difference nset-exclusive-or
    nstring-capitalize nstring-downcase nstring-upcase nsublis nsubst
    nsubst-if nsubst-if-not nsubstitute nsubstitute-if
    nsubstitute-if-not nth nthcdr numberp numerator nunion oddp open
    open-stream-p output-stream-p package-error-package package-name
    package-nicknames package-shadowing-symbols package-use-list
    package-used-by-list packagep pairlis parse-integer
    parse-namestring pathname-device pathname-directory pathname-host
    pathname-match-p pathname-name pathname-type pathname-version
    pathnamep peek-char phase plusp position position-if
    position-if-not pprint pprint-dispatch pprint-fill pprint-indent
    pprint-linear pprint-newline pprint-tab pprint-tabular prin1
    prin1-to-string princ princ-to-string print
    print-not-readable-object print-object probe-file proclaim provide
    random random-state-p rassoc rassoc-if rassoc-if-not rationalize
    rationalp read read-byte read-char read-char-no-hang
    read-delimited-list read-from-string read-line
    read-preserving-whitespace read-sequence readtable-case readtablep
    realp realpart reduce rem remhash remove remove-duplicates
    remove-if remove-if-not remprop rename-file rename-package replace
    require rest restart-name revappend reverse room round
    row-major-aref rplaca rplacd sbit scale-float schar search second
    set set-difference set-dispatch-macro-character set-exclusive-or
    set-macro-character set-pprint-dispatch set-syntax-from-char
    seventh shadow shadowing-import short-site-name signal signum
    simple-bit-vector-p simple-condition-format-arguments
    simple-condition-format-control simple-string-p simple-vector-p
    sin sinh sixth sleep slot-boundp slot-exists-p slot-makunbound
    slot-value software-type software-version some sort
    special-operator-p sqrt stable-sort standard-char-p
    stream-element-type stream-error-stream stream-external-format
    streamp string-capitalize string-downcase string-equal
    string-greaterp string-left-trim string-lessp string-not-equal
    string-not-greaterp string-not-lessp string-right-trim string-trim
    string-upcase string/= string< string<= string= string> string>=
    stringp structure sublis subseq subsetp subst subst-if
    subst-if-not substitute substitute-if substitute-if-not subtypep
    svref sxhash symbol-function symbol-name symbol-package
    symbol-plist symbol-value symbolp synonym-stream-symbol tailp tan
    tanh tenth terpri third translate-logical-pathname
    translate-pathname tree-equal truename truncate
    two-way-stream-input-stream two-way-stream-output-stream
    type-error-datum type-error-expected-type type-of typep
    unbound-slot-instance unexport unintern union unread-char
    unuse-package upgraded-array-element-type
    upgraded-complex-part-type upper-case-p use-package
    user-homedir-pathname values-list variable vector-pop vector-push
    vector-push-extend vectorp warn wild-pathname-p write write-byte
    write-char write-line write-sequence write-string write-to-string
    y-or-n-p yes-or-no-p zerop))

(defvar ansi-lisp-generic-function
  '(add-method
    allocate-instance change-class class-name
    compute-applicable-methods find-method function-keywords
    initialize-instance make-instance make-instances-obsolete
    make-load-form method-qualifiers no-applicable-method
    no-next-method reinitialize-instance remove-method
    shared-initialize slot-missing slot-unbound
    update-instance-for-different-class
    update-instance-for-redefined-class))

(defvar ansi-lisp-macro
  '(or
    lambda setf assert call-method case ccase check-type cond
    ctypecase decf declaim defclass defconstant defgeneric
    define-compiler-macro define-condition define-method-combination
    define-modify-macro define-setf-expander define-symbol-macro
    defmacro defmethod defpackage defparameter defsetf defstruct
    deftype defun defvar destructuring-bind do do-all-symbols
    do-external-symbols do-symbols do* dolist dotimes ecase etypecase
    formatter handler-bind handler-case ignore-errors in-package incf
    loop loop-finish make-method multiple-value-bind
    multiple-value-list multiple-value-setq nth-value otherwise pop
    pprint-exit-if-list-exhausted pprint-logical-block pprint-pop
    print-unreadable-object prog prog1 prog2 prog* psetf psetq push
    pushnew remf restart-bind restart-case return rotatef shiftf step
    time trace typecase unless untrace when with-accessors
    with-compilation-unit with-condition-restarts
    with-hash-table-iterator with-input-from-string with-open-file
    with-open-stream with-output-to-string with-package-iterator
    with-simple-restart with-slots with-standard-io-syntax))

(defvar ansi-lisp-special-operator
  '(function
    block catch eval-when flet go if labels let let* load-time-value
    locally macrolet multiple-value-call multiple-value-prog1 progn
    progv quote return-from setq symbol-macrolet tagbody the throw
    unwind-protect))

(defvar ansi-lisp-type
  '(array
    base-char base-string bignum bit-vector boolean broadcast-stream
    built-in-class class compiled-function concatenated-stream
    double-float echo-stream extended-char file-stream fixnum
    generic-function hash-table integer keyword long-float method
    number package random-state ratio readtable real restart satisfies
    sequence short-float signed-byte simple-array simple-base-string
    simple-bit-vector simple-string simple-vector single-float
    standard-char standard-class standard-generic-function
    standard-method standard-object stream string-stream
    structure-class structure-object symbol synonym-stream
    two-way-stream unsigned-byte))

(defvar ansi-lisp-unknown
  '(method-combination))

(defvar ansi-lisp-global-variable
  '(//
    /// ** *** *break-on-signals* *compile-file-pathname*
    *compile-file-truename* *compile-print* *compile-verbose*
    *debug-io* *debugger-hook* *default-pathname-defaults*
    *error-output* *features* *gensym-counter* *load-pathname*
    *load-print* *load-truename* *load-verbose* *macroexpand-hook*
    *modules* *package* *print-array* *print-base* *print-case*
    *print-circle* *print-escape* *print-gensym* *print-length*
    *print-level* *print-lines* *print-miser-width*
    *print-pprint-dispatch* *print-pretty* *print-radix*
    *print-readably* *print-right-margin* *query-io* *random-state*
    *read-base* *read-default-float-format* *read-eval*
    *read-suppress* *readtable* *standard-input* *standard-output*
    *terminal-io* *trace-output* ++ +++))

(defvar ansi-lisp-expression
  '(declare))

;; This is the list of all the variables above.
;; It refers all faces except for parenthesis and number.
(defvar ansi-lisp-known-symbol-classes
  '(ansi-lisp-boolean
    ansi-lisp-constant
    ansi-lisp-declaration
    ansi-lisp-condition-type
    ansi-lisp-function
    ansi-lisp-generic-function
    ansi-lisp-macro
    ansi-lisp-special-operator
    ansi-lisp-type
    ansi-lisp-unknown
    ansi-lisp-global-variable
    ansi-lisp-expression))

;; ;;;;;;;;;;
;; Setup code
;; ;;;;;;;;;;

(defun ansi-lisp-highlight-keyword (class)
  "Make a single font-lock-keyword applying CLASS face to each of the symbols in CLASS variable."
  (list (regexp-opt
         (mapcar #'symbol-name (symbol-value class))
         'words)
        'quote
        class))

(defun ansi-lisp-highlight-all-keywords ()
  "Highlight all known keywords immediatly."
  (font-lock-add-keywords
   nil
   (append
    (list
     ;; Conventional Constant Variables
     '("#?\\_<\\(?:[0-9]+=\\)?\\([+][^ ]+?[+]\\)\\_>" 1 'ansi-lisp-constant)

     ;; Conventional Global Variables, including ANSI ones
     '("#?\\_<\\(?:[0-9]+=\\)?\\([*][^ ]+?[*]\\)\\_>" 1 'ansi-lisp-global-variable)

     ;; Lisp Numbers, simple ones, just integers
     '("\\_<[+-]?[0-9]+\\_>" . 'ansi-lisp-number)

     ;; I'm a psycho and want my parentheis color to be controlled.
     '("[()]" . 'ansi-lisp-parenthesis)

     ;; These are often important to see, but I don't know how to
     ;; highlight the matching parenthesis with it
     ;;'("[#][']" . 'ansi-lisp-boolean)
     '("[`,@#']" . 'ansi-lisp-boolean)
     )
    (mapcar #'ansi-lisp-highlight-keyword
            ansi-lisp-known-symbol-classes))))

(add-hook 'lisp-mode-hook 'ansi-lisp-highlight-all-keywords)

(provide 'psilord-lisp-colors)

;;; psilord-lisp-colors.el ends here
