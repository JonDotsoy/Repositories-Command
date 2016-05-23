
## Repositories Alias Names ##
# Alias names.
function repositories-alias-names {
	case "${REPOSITORIES_LIVE_RELOAD}" in
		'true'|'TRUE'|'1'|'on'|'ON'|'Y'|'YES'|'y'|'yes' )
			export REPOSITORIES_PATHS="$(cat < ~/.repositories)"
			;;
	esac

local precollectwithdobleend=${REPOSITORIES_PATHS//';'/' ;;'}
local precollectremplacewithecho=${precollectwithdobleend//'::'/' ) echo '}

local runExec="case \"${1}\" in
${precollectremplacewithecho}
*) exit 1 ;;
esac"

bash <<EOF
${runExec}
EOF

return 0
}
