# chezscheme-zeromq
ZeroMQ for Chez Scheme

---

# Installation

## NixOS

Install ZeroMQ

```
nix-env -iA nixos.zeromq
```

Load shared object

```scheme
(load-shared-object
  (format "~a/.nix-profile/lib/libzmq.so" (getenv "HOME")))
```

# Quickstart

## Helper procedures

```scheme
; Copy bytevector into pointer
(define (ptr-put-bytevector ptr bv len)
  (define ip (open-bytevector-input-port bv))
  (do ([i 0 (add1 i)])
      ((or (negative? i) (>= i len)) (void))
      (foreign-set! 'unsigned-8 ptr i (get-u8 ip))))

; Get bytevector from pointer
(define (ptr->bytevector ptr len)
  (define-values (op g) (open-bytevector-output-port))
  (do ([i 0 (add1 i)])
      ((or (negative? i) (>= i len)) (g))
      (put-u8 op (foreign-ref 'unsigned-8 ptr i))))
```

## Server

```scheme
(import (zeromq))

(define context (zmq_ctx_new))
(define responder (zmq_socket context ZMQ_REP))
(assert (zero? (zmq_bind responder "tcp://*:5555")))

(define buffer (foreign-alloc 10))

(define nbytes (zmq_recv responder buffer 10 0))
(define msg (utf8->string (ptr->bytevector buffer nbytes)))

(format #t "received: ~s\n" msg)

(foreign-free buffer)
(zmq_close responder)
(zmq_ctx_destroy context)
```

## Client

```scheme
(import (zeromq))

(define context (zmq_ctx_new))
(define requester (zmq_socket context ZMQ_REQ))
(zmq_connect requester "tcp://localhost:5555")

(define buffer (foreign-alloc 10))

(ptr-put-bytevector buffer (string->utf8 "hey") 3)

(zmq_send requester buffer 3 0)

(foreign-free buffer)
(zmq_close requester)
(zmq_ctx_destroy context)
```
