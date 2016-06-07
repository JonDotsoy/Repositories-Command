
## Repositories ##
function repositories-version {
	echo "<%= version %>"
}

function repositories {
	case "${1}" in
		'list') . "<%= RepositoriesList %>" ;;
		'alias' ) . "<%= RepositoriesAliasNames %>" "${2}" ;;
		'cd' ) . "<%= RepositoriesCd %>" "${2}" ;;
		'version'|'v') repositories-version ;;
		'help'|* ) . "<%= RepositoriesHelp %>" ;;
	esac
}

repositories $*
