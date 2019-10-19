# Set directory for config.
CONF_DIR=~/.bashrc.d

# Apply config in specified directory if present.
if [[ -d ${CONF_DIR} ]];then
    declare -a CONF_FILES=( \
                          "editor" \
                          "functions" \
                          "interface" \
                          "language" \
                          "prompt" \
                          )

    # Load config.
    for conf in "${CONF_FILES[@]}";do
        CONFIG=${CONF_DIR}/${conf}
        if [[ -f  ${CONFIG} ]];then
            source ${CONFIG}
        fi
    done

    # Load additional config, if any.
    if [[ -f ${CONF_DIR}/add ]]; then
        source ${CONF_DIR}/add
    fi

    # Some config needs to be OS specific.
    if [[ $(uname) == "Darwin" ]];then
        SUFFIX=_mac
    else
        SUFFIX=_linux
    fi

    declare -a OS_FILES=( \
                        "aliases" \
                        )
    # Load OS specific config.
    for os_conf in "${OS_FILES[@]}";do
        FILE_PATH=${CONF_DIR}/${os_conf}${SUFFIX}
        if [[ -f ${FILE_PATH} ]];then
            source ${FILE_PATH}
        fi
    done

else
    # If there is no config directory, at least give me a fancy prompt.
    force_color_prompt=yes
    PS1='\[\033[38;5;6m\]\A \h\[\033[00m\]:\[\033[38;5;8m\]\w\[\033[00m\] $ '
    shopt -s checkwinsize
fi
