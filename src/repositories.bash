#! /usr/bin/env bash

## Repositories ##
function repositories-version {
	if [[ "<%= pkg.gitHead ? 'true': 'false' %>" = "true" ]]; then
		echo "v<%= version %> (<%= pkg.gitHead %>)"
	else
		echo "v<%= version %>"
	fi
}

function repositories-install {
	echo "# Copia esto en \".bashrc\""
	echo "alias r=\". \\\"<%= Repositories %>\\\"\""
}

function repositories {
	case "${1}" in
		'version'|'v') repositories-version ;;
		'install'|'i') repositories-install ;;
		'list')        . "<%= RepositoriesList %>" ;;
		'alias' )      . "<%= RepositoriesAliasNames %>" "${2}" ;;
		'cd' )         . "<%= RepositoriesCd %>" "${2}" ;;
		'help'|* )     . "<%= RepositoriesHelp %>" ;;
	esac
}

repositories $*
