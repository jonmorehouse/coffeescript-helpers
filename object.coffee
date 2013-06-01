module.exports = ->

	# clone an object and return a new instance of it
	Object::clone = ->

		# create the new instance
		newInstance = new Object()

		# now set all of the element by doing a pretty list comprehension!
		newInstance[key] = @[key] if typeof @[key] == "object" else @[key] for key of @

		# return our newInstance
		return newInstance

	# extend an object with another one
	Object::extend = (objects...) ->
		
	    for object in objects
	        for key, value of object
	            @[key] = value
	    return 


