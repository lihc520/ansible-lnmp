function sf2chmod(){
    if [ "M" = "$SYS_TYPE" ]; then
        chmod +a "www allow delete,write,append,file_inherit,directory_inherit" $@
        chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" $@
    else
        setfacl -R -m u:www:rwX -m u:`whoami`:rwX $@
        setfacl -dR -m u:www:rwx -m u:`whoami`:rwx $@
    fi
}

export PATH=/usr/local/php/bin:/usr/local/nginx/sbin:$PATH