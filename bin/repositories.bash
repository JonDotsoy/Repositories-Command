
## Repositories ##
function repositories-version {
	echo ${REPOSITORIES_VERSION}
}

function repositories {
	case "${1}" in
		'list') repositories-list ;;
		'alias' ) repositories-alias-names "${2}" ;;
		'cd' ) repositories-cd "${2}" ;;
		'version'|'v') repositories-version ;;
		'help'|* ) repositories-help ;;
	esac
}
