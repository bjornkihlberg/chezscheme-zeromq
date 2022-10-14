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
  (export ZMQ_PAIR
          ZMQ_PUB
          ZMQ_SUB
          ZMQ_REQ
          ZMQ_REP
          ZMQ_DEALER
          ZMQ_ROUTER
          ZMQ_PULL
          ZMQ_PUSH
          ZMQ_XPUB
          ZMQ_XSUB
          ZMQ_STREAM
          ZMQ_AFFINITY
          ZMQ_ROUTING_ID
          ZMQ_SUBSCRIBE
          ZMQ_UNSUBSCRIBE
          ZMQ_RATE
          ZMQ_RECOVERY_IVL
          ZMQ_SNDBUF
          ZMQ_RCVBUF
          ZMQ_RCVMORE
          ZMQ_FD
          ZMQ_EVENTS
          ZMQ_TYPE
          ZMQ_LINGER
          ZMQ_RECONNECT_IVL
          ZMQ_BACKLOG
          ZMQ_RECONNECT_IVL_MAX
          ZMQ_MAXMSGSIZE
          ZMQ_SNDHWM
          ZMQ_RCVHWM
          ZMQ_MULTICAST_HOPS
          ZMQ_RCVTIMEO
          ZMQ_SNDTIMEO
          ZMQ_LAST_ENDPOINT
          ZMQ_ROUTER_MANDATORY
          ZMQ_TCP_KEEPALIVE
          ZMQ_TCP_KEEPALIVE_CNT
          ZMQ_TCP_KEEPALIVE_IDLE
          ZMQ_TCP_KEEPALIVE_INTVL
          ZMQ_IMMEDIATE
          ZMQ_XPUB_VERBOSE
          ZMQ_ROUTER_RAW
          ZMQ_IPV6
          ZMQ_MECHANISM
          ZMQ_PLAIN_SERVER
          ZMQ_PLAIN_USERNAME
          ZMQ_PLAIN_PASSWORD
          ZMQ_CURVE_SERVER
          ZMQ_CURVE_PUBLICKEY
          ZMQ_CURVE_SECRETKEY
          ZMQ_CURVE_SERVERKEY
          ZMQ_PROBE_ROUTER
          ZMQ_REQ_CORRELATE
          ZMQ_REQ_RELAXED
          ZMQ_CONFLATE
          ZMQ_ZAP_DOMAIN
          ZMQ_ROUTER_HANDOVER
          ZMQ_TOS
          ZMQ_CONNECT_ROUTING_ID
          ZMQ_GSSAPI_SERVER
          ZMQ_GSSAPI_PRINCIPAL
          ZMQ_GSSAPI_SERVICE_PRINCIPAL
          ZMQ_GSSAPI_PLAINTEXT
          ZMQ_HANDSHAKE_IVL
          ZMQ_SOCKS_PROXY
          ZMQ_XPUB_NODROP
          ZMQ_BLOCKY
          ZMQ_XPUB_MANUAL
          ZMQ_XPUB_WELCOME_MSG
          ZMQ_STREAM_NOTIFY
          ZMQ_INVERT_MATCHING
          ZMQ_HEARTBEAT_IVL
          ZMQ_HEARTBEAT_TTL
          ZMQ_HEARTBEAT_TIMEOUT
          ZMQ_XPUB_VERBOSER
          ZMQ_CONNECT_TIMEOUT
          ZMQ_TCP_MAXRT
          ZMQ_THREAD_SAFE
          ZMQ_MULTICAST_MAXTPDU
          ZMQ_VMCI_BUFFER_SIZE
          ZMQ_VMCI_BUFFER_MIN_SIZE
          ZMQ_VMCI_BUFFER_MAX_SIZE
          ZMQ_VMCI_CONNECT_TIMEOUT
          ZMQ_USE_FD
          ZMQ_GSSAPI_PRINCIPAL_NAMETYPE
          ZMQ_GSSAPI_SERVICE_PRINCIPAL_NAMETYPE
          ZMQ_BINDTODEVICE
          ZMQ_MORE
          ZMQ_SHARED
          ZMQ_DONTWAIT
          ZMQ_SNDMORE
          ZMQ_NULL
          ZMQ_PLAIN
          ZMQ_CURVE
          ZMQ_GSSAPI
          ZMQ_GROUP_MAX_LENGTH
          ZMQ_GSSAPI_NT_HOSTBASED
          ZMQ_GSSAPI_NT_USER_NAME
          ZMQ_GSSAPI_NT_KRB5_PRINCIPAL
          ZMQ_EVENT_CONNECTED
          ZMQ_EVENT_CONNECT_DELAYED
          ZMQ_EVENT_CONNECT_RETRIED
          ZMQ_EVENT_LISTENING
          ZMQ_EVENT_BIND_FAILED
          ZMQ_EVENT_ACCEPTED
          ZMQ_EVENT_ACCEPT_FAILED
          ZMQ_EVENT_CLOSED
          ZMQ_EVENT_CLOSE_FAILED
          ZMQ_EVENT_DISCONNECTED
          ZMQ_EVENT_MONITOR_STOPPED
          ZMQ_EVENT_ALL
          ZMQ_EVENT_HANDSHAKE_FAILED_NO_DETAIL
          ZMQ_EVENT_HANDSHAKE_SUCCEEDED
          ZMQ_EVENT_HANDSHAKE_FAILED_PROTOCOL
          ZMQ_EVENT_HANDSHAKE_FAILED_AUTH
          ZMQ_PROTOCOL_ERROR_ZMTP_UNSPECIFIED
          ZMQ_PROTOCOL_ERROR_ZMTP_UNEXPECTED_COMMAND
          ZMQ_PROTOCOL_ERROR_ZMTP_INVALID_SEQUENCE
          ZMQ_PROTOCOL_ERROR_ZMTP_KEY_EXCHANGE
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_UNSPECIFIED
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_MESSAGE
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_HELLO
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_INITIATE
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_ERROR
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_READY
          ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_WELCOME
          ZMQ_PROTOCOL_ERROR_ZMTP_INVALID_METADATA
          ZMQ_PROTOCOL_ERROR_ZMTP_CRYPTOGRAPHIC
          ZMQ_PROTOCOL_ERROR_ZMTP_MECHANISM_MISMATCH
          ZMQ_PROTOCOL_ERROR_ZAP_UNSPECIFIED
          ZMQ_PROTOCOL_ERROR_ZAP_MALFORMED_REPLY
          ZMQ_PROTOCOL_ERROR_ZAP_BAD_REQUEST_ID
          ZMQ_PROTOCOL_ERROR_ZAP_BAD_VERSION
          ZMQ_PROTOCOL_ERROR_ZAP_INVALID_STATUS_CODE
          ZMQ_PROTOCOL_ERROR_ZAP_INVALID_METADATA
          ZMQ_PROTOCOL_ERROR_WS_UNSPECIFIED)

  (chezscheme)

  ; Socket types
  (define ZMQ_PAIR 0)
  (define ZMQ_PUB 1)
  (define ZMQ_SUB 2)
  (define ZMQ_REQ 3)
  (define ZMQ_REP 4)
  (define ZMQ_DEALER 5)
  (define ZMQ_ROUTER 6)
  (define ZMQ_PULL 7)
  (define ZMQ_PUSH 8)
  (define ZMQ_XPUB 9)
  (define ZMQ_XSUB 10)
  (define ZMQ_STREAM 11)

  ; Socket options
  (define ZMQ_AFFINITY 4)
  (define ZMQ_ROUTING_ID 5)
  (define ZMQ_SUBSCRIBE 6)
  (define ZMQ_UNSUBSCRIBE 7)
  (define ZMQ_RATE 8)
  (define ZMQ_RECOVERY_IVL 9)
  (define ZMQ_SNDBUF 11)
  (define ZMQ_RCVBUF 12)
  (define ZMQ_RCVMORE 13)
  (define ZMQ_FD 14)
  (define ZMQ_EVENTS 15)
  (define ZMQ_TYPE 16)
  (define ZMQ_LINGER 17)
  (define ZMQ_RECONNECT_IVL 18)
  (define ZMQ_BACKLOG 19)
  (define ZMQ_RECONNECT_IVL_MAX 21)
  (define ZMQ_MAXMSGSIZE 22)
  (define ZMQ_SNDHWM 23)
  (define ZMQ_RCVHWM 24)
  (define ZMQ_MULTICAST_HOPS 25)
  (define ZMQ_RCVTIMEO 27)
  (define ZMQ_SNDTIMEO 28)
  (define ZMQ_LAST_ENDPOINT 32)
  (define ZMQ_ROUTER_MANDATORY 33)
  (define ZMQ_TCP_KEEPALIVE 34)
  (define ZMQ_TCP_KEEPALIVE_CNT 35)
  (define ZMQ_TCP_KEEPALIVE_IDLE 36)
  (define ZMQ_TCP_KEEPALIVE_INTVL 37)
  (define ZMQ_IMMEDIATE 39)
  (define ZMQ_XPUB_VERBOSE 40)
  (define ZMQ_ROUTER_RAW 41)
  (define ZMQ_IPV6 42)
  (define ZMQ_MECHANISM 43)
  (define ZMQ_PLAIN_SERVER 44)
  (define ZMQ_PLAIN_USERNAME 45)
  (define ZMQ_PLAIN_PASSWORD 46)
  (define ZMQ_CURVE_SERVER 47)
  (define ZMQ_CURVE_PUBLICKEY 48)
  (define ZMQ_CURVE_SECRETKEY 49)
  (define ZMQ_CURVE_SERVERKEY 50)
  (define ZMQ_PROBE_ROUTER 51)
  (define ZMQ_REQ_CORRELATE 52)
  (define ZMQ_REQ_RELAXED 53)
  (define ZMQ_CONFLATE 54)
  (define ZMQ_ZAP_DOMAIN 55)
  (define ZMQ_ROUTER_HANDOVER 56)
  (define ZMQ_TOS 57)
  (define ZMQ_CONNECT_ROUTING_ID 61)
  (define ZMQ_GSSAPI_SERVER 62)
  (define ZMQ_GSSAPI_PRINCIPAL 63)
  (define ZMQ_GSSAPI_SERVICE_PRINCIPAL 64)
  (define ZMQ_GSSAPI_PLAINTEXT 65)
  (define ZMQ_HANDSHAKE_IVL 66)
  (define ZMQ_SOCKS_PROXY 68)
  (define ZMQ_XPUB_NODROP 69)
  (define ZMQ_BLOCKY 70)
  (define ZMQ_XPUB_MANUAL 71)
  (define ZMQ_XPUB_WELCOME_MSG 72)
  (define ZMQ_STREAM_NOTIFY 73)
  (define ZMQ_INVERT_MATCHING 74)
  (define ZMQ_HEARTBEAT_IVL 75)
  (define ZMQ_HEARTBEAT_TTL 76)
  (define ZMQ_HEARTBEAT_TIMEOUT 77)
  (define ZMQ_XPUB_VERBOSER 78)
  (define ZMQ_CONNECT_TIMEOUT 79)
  (define ZMQ_TCP_MAXRT 80)
  (define ZMQ_THREAD_SAFE 81)
  (define ZMQ_MULTICAST_MAXTPDU 84)
  (define ZMQ_VMCI_BUFFER_SIZE 85)
  (define ZMQ_VMCI_BUFFER_MIN_SIZE 86)
  (define ZMQ_VMCI_BUFFER_MAX_SIZE 87)
  (define ZMQ_VMCI_CONNECT_TIMEOUT 88)
  (define ZMQ_USE_FD 89)
  (define ZMQ_GSSAPI_PRINCIPAL_NAMETYPE 90)
  (define ZMQ_GSSAPI_SERVICE_PRINCIPAL_NAMETYPE 91)
  (define ZMQ_BINDTODEVICE 92)

  ; Message options
  (define ZMQ_MORE 1)
  (define ZMQ_SHARED 3)

  ; Send/recv options
  (define ZMQ_DONTWAIT 1)
  (define ZMQ_SNDMORE 2)

  ; Security mechanisms
  (define ZMQ_NULL 0)
  (define ZMQ_PLAIN 1)
  (define ZMQ_CURVE 2)
  (define ZMQ_GSSAPI 3)

  ; RADIO-DISH protocol
  (define ZMQ_GROUP_MAX_LENGTH 255)

  ; GSSAPI principal name types
  (define ZMQ_GSSAPI_NT_HOSTBASED 0)
  (define ZMQ_GSSAPI_NT_USER_NAME 1)
  (define ZMQ_GSSAPI_NT_KRB5_PRINCIPAL 2)

  ; Socket transport events (TCP, IPC and TIPC only)
  (define ZMQ_EVENT_CONNECTED #x0001)
  (define ZMQ_EVENT_CONNECT_DELAYED #x0002)
  (define ZMQ_EVENT_CONNECT_RETRIED #x0004)
  (define ZMQ_EVENT_LISTENING #x0008)
  (define ZMQ_EVENT_BIND_FAILED #x0010)
  (define ZMQ_EVENT_ACCEPTED #x0020)
  (define ZMQ_EVENT_ACCEPT_FAILED #x0040)
  (define ZMQ_EVENT_CLOSED #x0080)
  (define ZMQ_EVENT_CLOSE_FAILED #x0100)
  (define ZMQ_EVENT_DISCONNECTED #x0200)
  (define ZMQ_EVENT_MONITOR_STOPPED #x0400)
  (define ZMQ_EVENT_ALL #xFFFF)
  ; Unspecified system errors during handshake. Event value is an errno.
  (define ZMQ_EVENT_HANDSHAKE_FAILED_NO_DETAIL #x0800)
  ; Handshake complete successfully with successful authentication (if enabled). Event value is unused.
  (define ZMQ_EVENT_HANDSHAKE_SUCCEEDED #x1000)
  ; Protocol errors between ZMTP peers or between server and ZAP handler. Event value is one of ZMQ_PROTOCOL_ERROR_*
  (define ZMQ_EVENT_HANDSHAKE_FAILED_PROTOCOL #x2000)
  ; Failed authentication requests. Event value is the numeric ZAP status code, i.e. 300, 400 or 500.
  (define ZMQ_EVENT_HANDSHAKE_FAILED_AUTH #x4000)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_UNSPECIFIED #x10000000)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_UNEXPECTED_COMMAND #x10000001)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_INVALID_SEQUENCE #x10000002)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_KEY_EXCHANGE #x10000003)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_UNSPECIFIED #x10000011)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_MESSAGE #x10000012)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_HELLO #x10000013)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_INITIATE #x10000014)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_ERROR #x10000015)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_READY #x10000016)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MALFORMED_COMMAND_WELCOME #x10000017)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_INVALID_METADATA #x10000018)
  ; the following two may be due to erroneous configuration of a peer
  (define ZMQ_PROTOCOL_ERROR_ZMTP_CRYPTOGRAPHIC #x11000001)
  (define ZMQ_PROTOCOL_ERROR_ZMTP_MECHANISM_MISMATCH #x11000002)
  (define ZMQ_PROTOCOL_ERROR_ZAP_UNSPECIFIED #x20000000)
  (define ZMQ_PROTOCOL_ERROR_ZAP_MALFORMED_REPLY #x20000001)
  (define ZMQ_PROTOCOL_ERROR_ZAP_BAD_REQUEST_ID #x20000002)
  (define ZMQ_PROTOCOL_ERROR_ZAP_BAD_VERSION #x20000003)
  (define ZMQ_PROTOCOL_ERROR_ZAP_INVALID_STATUS_CODE #x20000004)
  (define ZMQ_PROTOCOL_ERROR_ZAP_INVALID_METADATA #x20000005)
  (define ZMQ_PROTOCOL_ERROR_WS_UNSPECIFIED #x30000000))
