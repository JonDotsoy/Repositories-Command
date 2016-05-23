
## Repositories CD ##
# Cambia el directorio al del directorio encontrado
function repositories-cd {
	local retpath="$(repositories-alias-names $1)" 

	if [[ "${retpath}" == "" ]]
		then
		echo "ERROR: '${1}' No Found."
		return 1
	else
		cd "${retpath}"
	fi
}
