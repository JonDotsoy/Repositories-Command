let ejs = require( "ejs" )
let fs = require( "fs" )
let path = require( "path" )
let pkg = require( "../package.json" )

let fsReadFile = ( ...as ) => new Promise( function( resolve, reject ) {
	fs.readFile( ...as, ( err, data ) => {
		if ( err ) {
			reject( err )
		} else {
			resolve( data )
		}
	} )
} )

let fsWhiteFile = ( ...as ) => new Promise( function( resolve, reject ) {
	fs.writeFile( ...as, ( err, data ) => {
		if ( err ) {
			reject( err )
		} else {
			resolve( data )
		}
	} )
} )

let Compile = () => new Promise( function( resolve, reject ) {

} )

let buildFiles = [
	"repositories.bash",
	"repositories-alias-names.bash",
	"repositories-cd.bash",
	"repositories-help.bash",
	"repositories-list.bash",
]

let optionsViews = {
	pkg,
	version: pkg.version,
	path: path.resolve( `${ __dirname }/../bin/` ),
	"Repositories": path.resolve( `${ __dirname }/../bin/${"repositories.bash"}` ),
	"RepositoriesAliasNames": path.resolve( `${ __dirname }/../bin/${"repositories-alias-names.bash"}` ),
	"RepositoriesCd": path.resolve( `${ __dirname }/../bin/${"repositories-cd.bash"}` ),
	"RepositoriesHelp": path.resolve( `${ __dirname }/../bin/${"repositories-help.bash"}` ),
	"RepositoriesList": path.resolve( `${ __dirname }/../bin/${"repositories-list.bash"}` ),
}


/*
Run Build File
 */
Promise
	.all( buildFiles
		.map( fileName =>
			fsReadFile( path.resolve( `${ __dirname }/${ fileName }` ) )
			.then( data => data.toString() )
			.then( data => ejs.render( data, optionsViews, {} ) )
			.then( data => fsWhiteFile( path.resolve( `${ __dirname }/../bin/${ fileName }` ), data, {
				encoding: 'utf8',
				mode: 0o777,
			} ) )
			.then( () => `Is generate ${path.resolve( `${ __dirname }/../bin/${ fileName }` )}`)
		)
	)
	.then( outs => {
		console.log( outs.join( "\n" ) )
	} )
	.catch( err => {
		console.log( err.stack )
	} )
