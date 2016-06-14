
function repositories-help {
cat <<EOF
<%= pkg.title %> (<%= version %>) (c) 2016 <%= pkg.author.name %> <<%= pkg.author.email %>> (<%= pkg.author.url %>)
Uso: repositories [COMMAND]

Command:
    alias <name_project>      Muestra el path de un repositorio.
    install, i                Muestra alias para usar en ".bashrc".
    cd <name_project>         Cambia de directorio al de un proyecto
                              seleccionada.
    list                      Muestra lista de repositorios.
    version, v                Muestra versión actual.
    help                      Muestra esta ventana.
EOF
}

repositories-help $*
