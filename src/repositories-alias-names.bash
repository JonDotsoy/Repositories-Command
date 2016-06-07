
## Repositories Alias Names ##
# Alias names.
function repositories-alias-names {
local REPOSITORIES_PATHS="$(cat < ~/.repositories)"

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


repositories-alias-names $*
