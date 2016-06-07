
## Repositories ##
function repositories-version {
	echo "0.1.0-beta.4"
}

function repositories {
	case "${1}" in
		'list') . "C:\Users\alfa30\Repositories\repositorioes-command\bin\repositories-list.bash" ;;
		'alias' ) . "C:\Users\alfa30\Repositories\repositorioes-command\bin\repositories-alias-names.bash" "${2}" ;;
		'cd' ) . "C:\Users\alfa30\Repositories\repositorioes-command\bin\repositories-cd.bash" "${2}" ;;
		'version'|'v') repositories-version ;;
		'help'|* ) . "C:\Users\alfa30\Repositories\repositorioes-command\bin\repositories-help.bash" ;;
	esac
}

repositories $*
