
function repositories-list {
	local dividerspaces
	case "${REPOSITORIES_LIVE_RELOAD}" in
		'true'|'TRUE'|'1'|'on'|'ON'|'Y'|'YES'|'y'|'yes' )
			export REPOSITORIES_PATHS="$(cat < ~/.repositories)"
			;;
	esac

	local precollectwithdobleend=${REPOSITORIES_PATHS//';'/''}
	local precollectremplacewithecho=${precollectwithdobleend//'::'/" = "}
	local outnreplacedibycome=${precollectremplacewithecho//'|'/","}

	echo "${outnreplacedibycome}"
}
