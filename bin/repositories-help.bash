
function repositories-help {
cat <<EOF
Repositories Command (${REPOSITORIES_VERSION}) (c) 2016 Jonathan Delgado <hi@jon.soy>
Usage: repositories [COMMAND]

Command:
    alias <name_project>      Muestra el path de un repositorio.
    cd <name_project>         Cambia de directorio al de un proyecto
                              seleccionada.
    help
    list

Environment Variables:
    REPOSITORIES_PATHS        Rutas cargadas desde el archivo '~/.repositories'.
    REPOSITORIES_LIVE_RELOAD  Al ser el valor 'true', 'TRUE', '1', 'on', 'ON',
                              'Y', 'YES', 'y' o 'yes' carga de forma reiterativa
                              las rutas en 'REPOSITORIES_PATHS'.
    REPOSITORIES_VERSION      Versión de "Repositories Command".
EOF
}
