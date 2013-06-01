module.exports = ->

	console.log "HELLO WORLD"

	Object::extend = (objects...) ->
	    for object in objects
	        for key, value of object
	            @[key] = value
	    return 