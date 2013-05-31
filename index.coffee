"
	Any modules included here will be executed before locomotive boot
	The idea is that we can include any light weight global modules needed here before anything else
	Keep it light!
"
module.exports = ->

	# include our basic coffeescript extensions that we like!
	do require "./coffee_helpers"
	# require some bigger modules that we want to access globally
	# do require "./modules"
