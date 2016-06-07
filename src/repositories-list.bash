
function repositories-list {
	local REPOSITORIES_PATHS="$(cat < ~/.repositories)"

	local precollectwithdobleend=${REPOSITORIES_PATHS//';'/''}
	local precollectremplacewithecho=${precollectwithdobleend//'::'/" = "}
	local outnreplacedibycome=${precollectremplacewithecho//'|'/","}

	echo "${outnreplacedibycome}"
}

repositories-list $*
