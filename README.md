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
