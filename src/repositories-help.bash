
function repositories-help {
cat <<EOF
Repositories Command (<%= version %>) (c) 2016 Jonathan Delgado <hi@jon.soy>
Usage: repositories [COMMAND]

Command:
    alias <name_project>      Muestra el path de un repositorio.
    cd <name_project>         Cambia de directorio al de un proyecto
                              seleccionada.
    help
    list
EOF
}

repositories-help $*
