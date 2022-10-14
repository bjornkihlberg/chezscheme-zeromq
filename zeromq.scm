#!chezscheme

; Ensure the following foreign procedures are available:
(assert (foreign-entry? "zmq_ctx_new"))
(assert (foreign-entry? "zmq_socket"))
(assert (foreign-entry? "zmq_bind"))
(assert (foreign-entry? "zmq_recv"))
(assert (foreign-entry? "zmq_send"))
(assert (foreign-entry? "zmq_connect"))
(assert (foreign-entry? "zmq_close"))
(assert (foreign-entry? "zmq_ctx_destroy"))

; (assert (foreign-entry? "zmq_atomic_counter_dec"))
; (assert (foreign-entry? "zmq_atomic_counter_destroy"))
; (assert (foreign-entry? "zmq_atomic_counter_inc"))
; (assert (foreign-entry? "zmq_atomic_counter_new"))
; (assert (foreign-entry? "zmq_atomic_counter_set"))
; (assert (foreign-entry? "zmq_atomic_counter_value"))
; (assert (foreign-entry? "zmq_ctx_get"))
; (assert (foreign-entry? "zmq_ctx_set"))
; (assert (foreign-entry? "zmq_ctx_shutdown"))
; (assert (foreign-entry? "zmq_ctx_term"))
; (assert (foreign-entry? "zmq_curve_keypair"))
; (assert (foreign-entry? "zmq_curve_public"))
; (assert (foreign-entry? "zmq_disconnect"))
; (assert (foreign-entry? "zmq_errno"))
; (assert (foreign-entry? "zmq_getsockopt"))
; (assert (foreign-entry? "zmq_has"))
; (assert (foreign-entry? "zmq_init"))
; (assert (foreign-entry? "zmq_msg_close"))
; (assert (foreign-entry? "zmq_msg_copy"))
; (assert (foreign-entry? "zmq_msg_data"))
; (assert (foreign-entry? "zmq_msg_gets"))
; (assert (foreign-entry? "zmq_msg_get"))
; (assert (foreign-entry? "zmq_msg_init_data"))
; (assert (foreign-entry? "zmq_msg_init_size"))
; (assert (foreign-entry? "zmq_msg_init"))
; (assert (foreign-entry? "zmq_msg_more"))
; (assert (foreign-entry? "zmq_msg_move"))
; (assert (foreign-entry? "zmq_msg_recv"))
; (assert (foreign-entry? "zmq_msg_send"))
; (assert (foreign-entry? "zmq_msg_set"))
; (assert (foreign-entry? "zmq_msg_size"))
; (assert (foreign-entry? "zmq_poll"))
; (assert (foreign-entry? "zmq_proxy_steerable"))
; (assert (foreign-entry? "zmq_proxy"))
; (assert (foreign-entry? "zmq_recvmsg"))
; (assert (foreign-entry? "zmq_send_const"))
; (assert (foreign-entry? "zmq_sendmsg"))
; (assert (foreign-entry? "zmq_setsockopt"))
; (assert (foreign-entry? "zmq_socket_monitor"))
; (assert (foreign-entry? "zmq_strerror"))
; (assert (foreign-entry? "zmq_term"))
; (assert (foreign-entry? "zmq_unbind"))
; (assert (foreign-entry? "zmq_version"))
; (assert (foreign-entry? "zmq_z85_decode"))
; (assert (foreign-entry? "zmq_z85_encode"))

(library (zeromq)
  (export)
  
  (chezscheme))
