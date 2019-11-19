# Set directory for config.
CONF_DIR=~/.tconf

# Apply config in specified directory if present.
if [[ -d ${CONF_DIR} ]];then
    declare -a CONF_FILES=( \
                          "editor" \
                          "functions" \
                          "interface_zsh" \
                          "language" \
                          "prompt_zsh" \
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
    # If a config dir is absent, set a fancy prompt.
    PS1="%F{yellow}%T %F{245}%3~ %(?..%F{red}%? )%F{default}%# "
fi


