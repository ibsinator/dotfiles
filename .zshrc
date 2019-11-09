# Set directory for config.
CONF_DIR=~/.zshrc.d

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


