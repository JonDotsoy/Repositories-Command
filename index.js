'use strict'
var path = require( 'path' )

switch ( process.argv[ 2 ] ) {
	case 'toinstall':
		console.log( '###########################' )
		console.log( '## Copy in `~ / .bashrc` ##' )
		console.log( '###########################' )
		console.log( 'export REPOSITORIES_PATHS="$(cat < \'' + path.resolve( process.env.HOME + '/.repositories' ) + '\')"' )
		console.log( 'export REPOSITORIES_VERSION="$(jq \'.version\' -r < \'' + path.resolve( __dirname + '/package.json' ) + '\')"' )
		console.log( 'source "' + path.resolve( __dirname + "/bin/repositories.bash" ) + '"' )
		console.log( 'source "' + path.resolve( __dirname + "/bin/repositories-alias-names.bash" ) + '"' )
		console.log( 'source "' + path.resolve( __dirname + "/bin/repositories-cd.bash" ) + '"' )
		console.log( 'source "' + path.resolve( __dirname + "/bin/repositories-help.bash" ) + '"' )
		console.log( 'source "' + path.resolve( __dirname + "/bin/repositories-list.bash" ) + '"' )
		break
}
