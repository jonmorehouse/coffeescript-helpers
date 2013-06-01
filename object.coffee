module.exports = ->

	# clone an object and return a new instance of it
	Object::clone = ->

		# create the new instance
		newInstance = new Object()

		test = 

			name: "JON"

		# now set all of the element by doing a pretty list comprehension!
		# newInstance[key] = test if typeof(@[key]) == "object" else @[key] for key of @
		for key of @

			# now recursively grab teh proper elements and exlude the functions etc
			switch typeof @[key]	

				when "function" then continue

				when "object" then newInstance[key] = @[key].clone()

				else newInstance[key] = @[key]	

		# return our newInstance
		return newInstance

	# extend an object with another one
	Object::extend = (objects...) ->
		
	    for object in objects
	        for key, value of object
	            @[key] = value
	    return 


