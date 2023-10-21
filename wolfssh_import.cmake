
set(WOLFSSH_ROOT $ENV{WOLFSSH_ROOT})

### wolfSSH library
file(GLOB_RECURSE WOLFSSH_SRC
    "${WOLFSSH_ROOT}/src/agent.c"
    "${WOLFSSH_ROOT}/src/certman.c"
    "${WOLFSSH_ROOT}/src/internal.c"
    "${WOLFSSH_ROOT}/src/io.c"
    "${WOLFSSH_ROOT}/src/keygen.c"
    "${WOLFSSH_ROOT}/src/log.c"
    "${WOLFSSH_ROOT}/src/misc.c"
    "${WOLFSSH_ROOT}/src/port.c"
    "${WOLFSSH_ROOT}/src/ssh.c"
    "${WOLFSSH_ROOT}/src/wolfscp.c"
    "${WOLFSSH_ROOT}/src/wolfsftp.c"
    "${WOLFSSH_ROOT}/src/wolfterm.c"
)

add_library(wolfssh STATIC
    ${WOLFSSH_SRC}
)

include_directories(${WOLFSSH_ROOT})

target_compile_definitions(wolfssh PUBLIC
    WOLFSSL_USER_SETTINGS
)
### End of wolfSSH library
